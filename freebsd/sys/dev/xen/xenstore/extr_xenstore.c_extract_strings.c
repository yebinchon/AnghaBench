
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 scalar_t__ strlen (char const*) ;

__attribute__((used)) static u_int
extract_strings(const char *strings, const char **dest, u_int len)
{
 u_int num;
 const char *p;

 for (p = strings, num = 0; p < strings + len; p += strlen(p) + 1) {
  if (dest != ((void*)0))
   *dest++ = p;
  num++;
 }

 return (num);
}
