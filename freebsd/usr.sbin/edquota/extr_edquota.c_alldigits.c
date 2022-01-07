
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (int) ;

int
alldigits(const char *s)
{
 int c;

 c = *s++;
 do {
  if (!isdigit(c))
   return (0);
 } while ((c = *s++));
 return (1);
}
