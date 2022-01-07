
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int printf (char*,...) ;

void
hexdump(uint8_t *data, size_t datalen)
{
 size_t i;

 for (i = 0; i < datalen; i++) {
  if (i % 16 == 0) {
   if (i != 0)
    printf("\n");
   printf("%04x: ", (int)i);
  }
  printf("%02x ", data[i]);
 }
 printf("\n");
}
