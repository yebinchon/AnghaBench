
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port_t ;


 int BCR0 (int ) ;
 int BSR3 (int ) ;
 unsigned char BSR3_IB ;
 unsigned char BSR3_IB_NEG ;
 unsigned char BSR3_ZERO ;
 unsigned char inb (int ) ;
 int outb (int ,int ) ;
 int porttab ;
 int valid (int ,int ) ;

__attribute__((used)) static int ct_probe2_board (port_t port)
{
 unsigned char sr3, osr3;
 int i;

 if (! valid (port, porttab))
  return 0;

 osr3 = inb (BSR3(port));
 if ((osr3 & (BSR3_IB | BSR3_IB_NEG)) != BSR3_IB &&
     (osr3 & (BSR3_IB | BSR3_IB_NEG)) != BSR3_IB_NEG)
  return (0);
 for (i=0; i<100; ++i) {

  sr3 = inb (BSR3(port));
  sr3 = inb (BSR3(port));
  if (((sr3 ^ osr3) & (BSR3_IB | BSR3_IB_NEG | BSR3_ZERO)) !=
      (BSR3_IB | BSR3_IB_NEG))
   return (0);
  osr3 = sr3;
 }

 outb (BCR0(port), 0);
 return 1;
}
