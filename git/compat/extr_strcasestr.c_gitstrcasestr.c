
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 scalar_t__ toupper (unsigned char) ;

char *gitstrcasestr(const char *haystack, const char *needle)
{
 int nlen = strlen(needle);
 int hlen = strlen(haystack) - nlen + 1;
 int i;

 for (i = 0; i < hlen; i++) {
  int j;
  for (j = 0; j < nlen; j++) {
   unsigned char c1 = haystack[i+j];
   unsigned char c2 = needle[j];
   if (toupper(c1) != toupper(c2))
    goto next;
  }
  return (char *) haystack + i;
 next:
  ;
 }
 return ((void*)0);
}
