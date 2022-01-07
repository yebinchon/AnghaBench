
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMA1_STATUS ;
 int DMA2_STATUS ;
 int inb (int ) ;

int
isa_dmatc(int chan)
{

 if (chan < 4)
  return(inb(DMA1_STATUS) & (1 << chan));
 else
  return(inb(DMA2_STATUS) & (1 << (chan & 3)));
}
