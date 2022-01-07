
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int printf (char*,char const*,unsigned int) ;
 int putchar (char) ;

void
printb(const char *s, unsigned int v, const char *bits)
{
 int i, any = 0;
 char c;

 assert(bits != ((void*)0));
 if (*bits == 8)
  printf("%s=%o", s, v);
 else
  printf("%s=%x", s, v);
 bits++;
 if (bits) {
  putchar('<');
  while ((i = *bits++) != '\0') {
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
