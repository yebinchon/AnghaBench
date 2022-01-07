
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* caddr_t ;


 int printf (char*,...) ;

void
ipsec_hexdump(caddr_t buf, int len)
{
 int i;

 for (i = 0; i < len; i++) {
  if (i != 0 && i % 32 == 0) printf("\n");
  if (i % 4 == 0) printf(" ");
  printf("%02x", (unsigned char)buf[i]);
 }




 return;
}
