
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int tolower (int const) ;

int
strcasecmp(const char *s1, const char *s2)
{
 const u_char *us1 = (const u_char *)s1, *us2 = (const u_char *)s2;

 while (tolower(*us1) == tolower(*us2)) {
  if (*us1++ == '\0')
   return (0);
  us2++;
 }
 return (tolower(*us1) - tolower(*us2));
}
