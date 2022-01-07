
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct option {int * long_name; int * short_name; struct strbuf* value; } ;


 int sq_quote_buf (struct strbuf*,char const*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int *) ;
 int stuck_long ;

__attribute__((used)) static int parseopt_dump(const struct option *o, const char *arg, int unset)
{
 struct strbuf *parsed = o->value;
 if (unset)
  strbuf_addf(parsed, " --no-%s", o->long_name);
 else if (o->short_name && (o->long_name == ((void*)0) || !stuck_long))
  strbuf_addf(parsed, " -%c", o->short_name);
 else
  strbuf_addf(parsed, " --%s", o->long_name);
 if (arg) {
  if (!stuck_long)
   strbuf_addch(parsed, ' ');
  else if (o->long_name)
   strbuf_addch(parsed, '=');
  sq_quote_buf(parsed, arg);
 }
 return 0;
}
