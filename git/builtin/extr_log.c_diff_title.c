
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;


 int strbuf_addf (struct strbuf*,char const*,int) ;
 int strbuf_addstr (struct strbuf*,char const*) ;

__attribute__((used)) static const char *diff_title(struct strbuf *sb, int reroll_count,
         const char *generic, const char *rerolled)
{
 if (reroll_count <= 0)
  strbuf_addstr(sb, generic);
 else
  strbuf_addf(sb, rerolled, reroll_count - 1);
 return sb->buf;
}
