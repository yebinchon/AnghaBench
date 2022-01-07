
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static bool
similar(const char *a, const char *b, int len)
{
 while (len) {
  if (isspace((unsigned char)*b)) {
   if (!isspace((unsigned char)*a))
    return 0;
   while (len && isspace((unsigned char)*b) && *b != '\n')
    b++, len--;
   while (isspace((unsigned char)*a) && *a != '\n')
    a++;
   if (*a == '\n' || *b == '\n')
    return (*a == *b);
  } else if (*a++ != *b++)
   return 0;
  else
   len--;
 }
 return 1;

}
