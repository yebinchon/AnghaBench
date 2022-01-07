
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int sq_quote_buf (struct strbuf*,char const*) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_addstr (struct strbuf*,char*) ;

__attribute__((used)) static void add_var(struct strbuf *buf, const char *name, const char *value)
{
 if (!value)
  strbuf_addf(buf, "unset %s; ", name);
 else {
  strbuf_addf(buf, "%s=", name);
  sq_quote_buf(buf, value);
  strbuf_addstr(buf, "; ");
 }
}
