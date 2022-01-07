
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 unsigned long approxidate_careful (char const*,int*) ;
 scalar_t__ parse_date (char const*,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,unsigned long) ;

__attribute__((used)) static int parse_force_date(const char *in, struct strbuf *out)
{
 strbuf_addch(out, '@');

 if (parse_date(in, out) < 0) {
  int errors = 0;
  unsigned long t = approxidate_careful(in, &errors);
  if (errors)
   return -1;
  strbuf_addf(out, "%lu", t);
 }

 return 0;
}
