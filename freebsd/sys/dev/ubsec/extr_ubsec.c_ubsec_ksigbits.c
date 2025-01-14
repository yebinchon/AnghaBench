
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int ;
struct crparam {int crp_nbits; int* crp_p; } ;



__attribute__((used)) static int
ubsec_ksigbits(struct crparam *cr)
{
 u_int plen = (cr->crp_nbits + 7) / 8;
 int i, sig = plen * 8;
 u_int8_t c, *p = cr->crp_p;

 for (i = plen - 1; i >= 0; i--) {
  c = p[i];
  if (c != 0) {
   while ((c & 0x80) == 0) {
    sig--;
    c <<= 1;
   }
   break;
  }
  sig -= 8;
 }
 return (sig);
}
