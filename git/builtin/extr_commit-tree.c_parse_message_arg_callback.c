
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; } ;
struct option {struct strbuf* value; } ;


 int BUG_ON_OPT_NEG_NOARG (int,char const*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_complete_line (struct strbuf*) ;

__attribute__((used)) static int parse_message_arg_callback(const struct option *opt,
  const char *arg, int unset)
{
 struct strbuf *buf = opt->value;

 BUG_ON_OPT_NEG_NOARG(unset, arg);

 if (buf->len)
  strbuf_addch(buf, '\n');
 strbuf_addstr(buf, arg);
 strbuf_complete_line(buf);

 return 0;
}
