
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int printf (char*,...) ;

__attribute__((used)) static void
filters_show_ipaddr(int type, uint8_t *addr, uint8_t *addrm)
{
 int noctets, octet;

 printf(" ");
 if (type == 0) {
  noctets = 4;
  printf("%3s", " ");
 } else
 noctets = 16;

 for (octet = 0; octet < noctets; octet++)
  printf("%02x", addr[octet]);
 printf("/");
 for (octet = 0; octet < noctets; octet++)
  printf("%02x", addrm[octet]);
}
