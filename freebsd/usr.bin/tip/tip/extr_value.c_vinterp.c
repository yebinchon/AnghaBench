
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
vinterp(char *s, int stop)
{
 char *p = s, c;
 int num;

 while ((c = *s++) && c != stop) {
  switch (c) {

  case '^':
   if (*s)
    *p++ = *s++ - 0100;
   else
    *p++ = c;
   break;

  case '\\':
   num = 0;
   c = *s++;
   if (c >= '0' && c <= '7')
    num = (num<<3)+(c-'0');
   else {
    char *q = "n\nr\rt\tb\bf\f";

    for (; *q; q++)
     if (c == *q++) {
      *p++ = *q;
      goto cont;
     }
    *p++ = c;
   cont:
    break;
   }
   if ((c = *s++) >= '0' && c <= '7') {
    num = (num<<3)+(c-'0');
    if ((c = *s++) >= '0' && c <= '7')
     num = (num<<3)+(c-'0');
    else
     s--;
   } else
    s--;
   *p++ = num;
   break;

  default:
   *p++ = c;
  }
 }
 *p = '\0';
 return (c == stop ? s-1 : ((void*)0));
}
