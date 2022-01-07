
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 char* strstr (char const*,char const*) ;

ptrdiff_t
indx(const char *s1, const char *s2)
{
 char *t;

 t = strstr(s1, s2);
 if (t == ((void*)0))
  return (-1);
 else
  return (t - s1);
}
