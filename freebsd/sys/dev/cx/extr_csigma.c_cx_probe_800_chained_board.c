
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port_t ;


 int BCR0 (int ) ;
 int BCR1 (int ) ;
 int BCR2 (int ) ;
 int BDET (int ) ;
 unsigned char BDET_IB ;
 unsigned char BDET_IB_NEG ;
 unsigned char inb (int ) ;
 int outb (int ,int ) ;

__attribute__((used)) static int cx_probe_800_chained_board (port_t port)
{
 unsigned char det, odet;
 int i;

 odet = inb (BDET(port));
 if ((odet & (BDET_IB | BDET_IB_NEG)) != BDET_IB &&
     (odet & (BDET_IB | BDET_IB_NEG)) != BDET_IB_NEG)
  return (0);
 for (i=0; i<100; ++i) {
  det = inb (BDET(port));
  if (((det ^ odet) & (BDET_IB | BDET_IB_NEG)) !=
      (BDET_IB | BDET_IB_NEG))
   return (0);
  odet = det;
 }

 outb (BCR0(port), 0);
 outb (BCR1(port), 0);
 outb (BCR2(port), 0);
 return (1);
}
