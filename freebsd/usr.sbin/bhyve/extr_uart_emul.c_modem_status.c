
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MCR_DTR ;
 int MCR_LOOPBACK ;
 int MCR_OUT1 ;
 int MCR_OUT2 ;
 int MCR_RTS ;
 int MSR_CTS ;
 int MSR_DCD ;
 int MSR_DELTA_MASK ;
 int MSR_DSR ;
 int MSR_RI ;
 int assert (int) ;

__attribute__((used)) static uint8_t
modem_status(uint8_t mcr)
{
 uint8_t msr;

 if (mcr & MCR_LOOPBACK) {




  msr = 0;
  if (mcr & MCR_RTS)
   msr |= MSR_CTS;
  if (mcr & MCR_DTR)
   msr |= MSR_DSR;
  if (mcr & MCR_OUT1)
   msr |= MSR_RI;
  if (mcr & MCR_OUT2)
   msr |= MSR_DCD;
 } else {




  msr = MSR_DCD | MSR_DSR;
 }
 assert((msr & MSR_DELTA_MASK) == 0);

 return (msr);
}
