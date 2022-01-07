
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; } ;
struct option {struct strbuf* value; } ;


 int have_option_m ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_complete_line (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int ) ;

__attribute__((used)) static int opt_parse_m(const struct option *opt, const char *arg, int unset)
{
 struct strbuf *buf = opt->value;
 if (unset) {
  have_option_m = 0;
  strbuf_setlen(buf, 0);
 } else {
  have_option_m = 1;
  if (buf->len)
   strbuf_addch(buf, '\n');
  strbuf_addstr(buf, arg);
  strbuf_complete_line(buf);
 }
 return 0;
}
