
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkimg_scheme {int name; } ;


 int EINVAL ;
 struct mkimg_scheme* scheme ;
 struct mkimg_scheme* scheme_iterate (struct mkimg_scheme*) ;
 scalar_t__ strcasecmp (char const*,int ) ;

int
scheme_select(const char *spec)
{
 struct mkimg_scheme *s;

 s = ((void*)0);
 while ((s = scheme_iterate(s)) != ((void*)0)) {
  if (strcasecmp(spec, s->name) == 0) {
   scheme = s;
   return (0);
  }
 }
 return (EINVAL);
}
