
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int * buf; } ;


 scalar_t__ is_dir_sep (int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;

__attribute__((used)) static void add_trailing_starstar_for_dir(struct strbuf *pat)
{
 if (pat->len && is_dir_sep(pat->buf[pat->len - 1]))
  strbuf_addstr(pat, "**");
}
