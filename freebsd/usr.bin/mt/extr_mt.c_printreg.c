
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int printf (char*,char const*,int) ;
 int putchar (char) ;

__attribute__((used)) static void
printreg(const char *s, u_int v, const char *bits)
{
 int i, any = 0;
 char c;

 if (bits && *bits == 8)
  printf("%s=%o", s, v);
 else
  printf("%s=%x", s, v);
 if (!bits)
  return;
 bits++;
 if (v && bits) {
  putchar('<');
  while ((i = *bits++)) {
   if (v & (1 << (i-1))) {
    if (any)
     putchar(',');
    any = 1;
    for (; (c = *bits) > 32; bits++)
     putchar(c);
   } else
    for (; *bits > 32; bits++)
     ;
  }
  putchar('>');
 }
}
