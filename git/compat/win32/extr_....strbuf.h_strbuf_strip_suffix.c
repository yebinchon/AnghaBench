
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;


 int strbuf_setlen (struct strbuf*,int ) ;
 scalar_t__ strip_suffix_mem (int ,int *,char const*) ;

__attribute__((used)) static inline int strbuf_strip_suffix(struct strbuf *sb, const char *suffix)
{
 if (strip_suffix_mem(sb->buf, &sb->len, suffix)) {
  strbuf_setlen(sb, sb->len);
  return 1;
 } else
  return 0;
}
