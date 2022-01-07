
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int tolower (int const) ;

int
strncasecmp(const char *s1, const char *s2, size_t n)
{

 if (n != 0) {
  const u_char *us1 = (const u_char *)s1;
  const u_char *us2 = (const u_char *)s2;

  do {
   if (tolower(*us1) != tolower(*us2))
    return (tolower(*us1) - tolower(*us2));
   if (*us1++ == '\0')
    break;
   us2++;
  } while (--n != 0);
 }
 return (0);
}
