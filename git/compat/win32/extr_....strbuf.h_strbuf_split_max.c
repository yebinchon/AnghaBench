
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;


 struct strbuf** strbuf_split_buf (int ,int ,int,int) ;

__attribute__((used)) static inline struct strbuf **strbuf_split_max(const struct strbuf *sb,
            int terminator, int max)
{
 return strbuf_split_buf(sb->buf, sb->len, terminator, max);
}
