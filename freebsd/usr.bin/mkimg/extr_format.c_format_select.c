
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkimg_format {int name; } ;


 int EINVAL ;
 struct mkimg_format* format ;
 struct mkimg_format* format_iterate (struct mkimg_format*) ;
 scalar_t__ strcasecmp (char const*,int ) ;

int
format_select(const char *spec)
{
 struct mkimg_format *f;

 f = ((void*)0);
 while ((f = format_iterate(f)) != ((void*)0)) {
  if (strcasecmp(spec, f->name) == 0) {
   format = f;
   return (0);
  }
 }
 return (EINVAL);
}
