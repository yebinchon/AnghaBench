
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahc_softc {int features; int qinfifonext; } ;


 int AHC_QUEUE_REGS ;
 int QINPOS ;
 int SNSCB_QOFF ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;

__attribute__((used)) static int
ahc_qinfifo_count(struct ahc_softc *ahc)
{
 uint8_t qinpos;
 uint8_t diff;

 if ((ahc->features & AHC_QUEUE_REGS) != 0) {
  qinpos = ahc_inb(ahc, SNSCB_QOFF);
  ahc_outb(ahc, SNSCB_QOFF, qinpos);
 } else
  qinpos = ahc_inb(ahc, QINPOS);
 diff = ahc->qinfifonext - qinpos;
 return (diff);
}
