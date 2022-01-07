
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

void
hexdump(char *p, int n)
{
 int i, off;

 for (off = 0; n > 0; off += 16, n -= 16) {
  printf("%s%04x:", off == 0 ? "\n" : "", off);
  i = (n >= 16 ? 16 : n);
  do {
   printf(" %02x", *p++ & 0xff);
  } while (--i);
  printf("\n");
 }
}
