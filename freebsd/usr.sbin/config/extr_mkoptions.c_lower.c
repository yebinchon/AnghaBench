
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isupper (char) ;
 char tolower (char) ;

__attribute__((used)) static char *
lower(char *str)
{
 char *cp = str;

 while (*str) {
  if (isupper(*str))
   *str = tolower(*str);
  str++;
 }
 return (cp);
}
