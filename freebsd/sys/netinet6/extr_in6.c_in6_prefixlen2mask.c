
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct in6_addr {int* s6_addr; } ;


 int LOG_ERR ;
 int bzero (struct in6_addr*,int) ;
 int log (int ,char*,int) ;

void
in6_prefixlen2mask(struct in6_addr *maskp, int len)
{
 u_char maskarray[8] = {0x80, 0xc0, 0xe0, 0xf0, 0xf8, 0xfc, 0xfe, 0xff};
 int bytelen, bitlen, i;


 if (0 > len || len > 128) {
  log(LOG_ERR, "in6_prefixlen2mask: invalid prefix length(%d)\n",
      len);
  return;
 }

 bzero(maskp, sizeof(*maskp));
 bytelen = len / 8;
 bitlen = len % 8;
 for (i = 0; i < bytelen; i++)
  maskp->s6_addr[i] = 0xff;
 if (bitlen)
  maskp->s6_addr[bytelen] = maskarray[bitlen - 1];
}
