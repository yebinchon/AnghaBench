
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _sm {double m; int s; } ;


 int ED (char*,char const*) ;
 int ND (char*,...) ;
 scalar_t__ strchr (int ,char) ;
 double strtod (char const*,char**) ;

__attribute__((used)) static double
parse_gen(const char *arg, const struct _sm *conv, int *err)
{
 double d;
 char *ep;
 int dummy;

 if (err == ((void*)0))
  err = &dummy;
 *err = 0;
 if (arg == ((void*)0))
  goto error;
 d = strtod(arg, &ep);
 if (ep == arg) {
  ED("bad argument %s", arg);
  goto error;
 }

 if (conv == ((void*)0) && *ep == '\0')
  goto done;
 ND("checking %s [%s]", arg, ep);
 for (;conv->s; conv++) {
  if (strchr(conv->s, *ep))
   goto done;
 }
error:
 *err = 1;
 return 0;

done:
 if (conv) {
  ND("scale is %s %lf", conv->s, conv->m);
  d *= conv->m;
 }
 ND("returning %lf", d);
 return d;
}
