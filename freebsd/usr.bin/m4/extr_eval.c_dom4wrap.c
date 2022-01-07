
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * m4wraps ;
 int maxwraps ;
 int wrapindex ;
 int * xreallocarray (int *,int,int,char*) ;
 int xstrdup (char const*) ;

__attribute__((used)) static void
dom4wrap(const char *text)
{
 if (wrapindex >= maxwraps) {
  if (maxwraps == 0)
   maxwraps = 16;
  else
   maxwraps *= 2;
  m4wraps = xreallocarray(m4wraps, maxwraps, sizeof(*m4wraps),
     "too many m4wraps");
 }
 m4wraps[wrapindex++] = xstrdup(text);
}
