---- 1, SELECT basics/ja

-- 1.世界各国のテーブルworldの紹介
-- WHERE 節の使用例としてフランス France の人口 population を表示するSQLが書いてある。 
-- 注）文字列（短いテキストデータ）はこの様に'シングルクオート'で囲む。
    -- ドイツ(Germany)の人口(population)を表示するように修正する。

SELECT population 
FROM world
WHERE name = 'France'

-- コメント
-- ◎ 結果: 初見で何となくSubmitをクリックして間違い表示がw
    -- ここでクイズ形式なのだと理解し上記を読み間違い箇所を修正し正解。
-- ！ 学び: 文字列は''で囲む必要がある
-- → 次のステップ: 答えを書いてからSubmitをクリックする


-- 2.スカンジナビア
-- キーワード IN に続くリスト中のそれぞれのアイテムについて表示する。 
-- 例としてブラジル、ロシア、インド、中国の国名と人口を表示している。
    -- Sweden と Norway と Denmark の国名 name と人口 population を表示する
   
SELECT name, population 
FROM world
WHERE name IN ('Brazil', 'Russia', 'India', 'China');

-- コメント
-- ◎ 結果: name IN に続くカッコ内を問題記載通りに修正し正解。
-- ！ 学び: 複数文字列は('〇〇','〇〇','〇〇','〇〇')形式に書く
-- → 次のステップ: 単体文字列と複数文字列の書き方を区別する


-- 3.丁度いいサイズ
-- 小さすぎも大きすぎもしない国は？ BETWEEN で範囲を指定する(境界値を範囲に含む)。
-- 以下の例の国は面積 area が 250,000 から 300,000 平方km。
    -- 面積が 200,000 ～ 250,000 の国の国名と面積を表示するように修正。
   
SELECT name, area 
FROM world
WHERE area BETWEEN 250000 AND 300000

-- コメント
-- ◎ 結果: BETWEEN 範囲指定箇所を問題記載通りに修正し正解。
-- ！ 学び: 範囲指定は　[対象の要素] BETWEEN [最小値] AND [最大値]　形式で記載する
-- → 次のステップ: 対象の要素と値を正しく指定し誤りが抽出されないようにするECHO �� <ON> �ł��B
