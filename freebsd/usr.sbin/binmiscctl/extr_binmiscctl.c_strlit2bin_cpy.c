
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int isdigit (int) ;
 int toupper (int ) ;

__attribute__((used)) static int
strlit2bin_cpy(uint8_t *d, char *s, size_t size)
{
 int c;
 size_t cnt = 0;

 while((c = *s++) != '\0') {
  if (c == '\\') {

   switch (*s) {
   case '\\':
    *d++ = '\\';
    break;

   case 'x':
    s++;
    c = toupper(*s++);
    *d = (c - (isdigit(c) ? '0' : ('A' - 10))) << 4;
    c = toupper(*s++);
    *d++ |= c - (isdigit(c) ? '0' : ('A' - 10));
    break;

   default:
    return (-1);
   }
  } else
   *d++ = c;

  if (++cnt > size)
   return (-1);
 }

 return (cnt);
}
