
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port_t ;


 int BCR0 (int) ;
 int BCR0_NORESET ;
 int BSR (int) ;
 int BSR_NOCHAIN ;
 int CS0 (int) ;
 int CS1 (int) ;
 int CS1A (int) ;
 scalar_t__ cx_probe_2x_board (int) ;
 scalar_t__ cx_probe_800_chained_board (int) ;
 scalar_t__ cx_probe_chained_board (int,int*,int*) ;
 int cx_probe_chip (int ) ;
 int dmatab ;
 int inb (int ) ;
 int irqtab ;
 int outb (int ,int ) ;
 int porttab ;
 int valid (int,int ) ;

int cx_probe_board (port_t port, int irq, int dma)
{
 int c0, c1, c2=0, c3=0, result;

 if (! valid (port, porttab))
  return 0;

 if (irq > 0 && ! valid (irq, irqtab))
  return 0;

 if (dma > 0 && ! valid (dma, dmatab))
  return 0;

 if (cx_probe_800_chained_board (port)) {

  if (! (inb (BSR(port)) & BSR_NOCHAIN)) {

   if (! cx_probe_800_chained_board (port+0x10))

    return (0);
   if (! (inb (BSR(port+0x10)) & BSR_NOCHAIN))

    return (0);
  }
  return 1;
 }
 if (cx_probe_chained_board (port, &c0, &c1)) {

  if (! (inb (BSR(port)) & BSR_NOCHAIN)) {

   if (! cx_probe_chained_board (port+0x10, &c2, &c3))

    return (0);
   if (! (inb (BSR(port+0x10)) & BSR_NOCHAIN))

    return (0);
  }
 } else if (cx_probe_2x_board (port)) {
  c0 = 1;
  c1 = 0;
 } else
  return (0);


 outb (BCR0(port), BCR0_NORESET);
 if (c2 || c3)
  outb (BCR0(port + 0x10), BCR0_NORESET);

 result = 1;
 if (c0 && ! cx_probe_chip (CS0(port)))
  result = 0;
 else if (c1 && ! cx_probe_chip (CS1A(port)) &&
     ! cx_probe_chip (CS1(port)))
  result = 0;
 else if (c2 && ! cx_probe_chip (CS0(port + 0x10)))
  result = 0;
 else if (c3 && ! cx_probe_chip (CS1(port + 0x10)))
  result = 0;


 outb (BCR0(port), 0);
 if (c2 || c3)
  outb (BCR0(port + 0x10), 0);


 return (result);
}
