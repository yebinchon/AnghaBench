
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf** strbuf_split_max (struct strbuf const*,int,int ) ;

__attribute__((used)) static inline struct strbuf **strbuf_split(const struct strbuf *sb,
        int terminator)
{
 return strbuf_split_max(sb, terminator, 0);
}
