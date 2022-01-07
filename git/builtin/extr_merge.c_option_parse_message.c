
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; } ;
struct option {struct strbuf* value; } ;


 int _ (char*) ;
 int error (int ) ;
 int have_message ;
 int strbuf_addf (struct strbuf*,char*,char*,char const*) ;
 int strbuf_setlen (struct strbuf*,int ) ;

__attribute__((used)) static int option_parse_message(const struct option *opt,
    const char *arg, int unset)
{
 struct strbuf *buf = opt->value;

 if (unset)
  strbuf_setlen(buf, 0);
 else if (arg) {
  strbuf_addf(buf, "%s%s", buf->len ? "\n\n" : "", arg);
  have_message = 1;
 } else
  return error(_("switch `m' requires a value"));
 return 0;
}
