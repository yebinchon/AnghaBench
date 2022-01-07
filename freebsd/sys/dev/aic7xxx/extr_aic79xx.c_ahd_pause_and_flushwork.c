
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int features; int flags; int qfreeze_cnt; } ;


 int AHD_ALL_INTERRUPTS ;
 int AHD_FATAL_ERROR (struct ahd_softc*) ;
 int AHD_REMOVABLE ;
 int ENSELO ;
 int INTSTAT ;
 int INT_PEND ;
 int KERNEL_QFREEZE_COUNT ;
 int SCSISEQ0 ;
 int SELDO ;
 int SELECTOUT_QFROZEN ;
 int SELINGO ;
 int SEQ_FLAGS2 ;
 int SSTAT0 ;
 int ahd_clear_critical_section (struct ahd_softc*) ;
 int ahd_flush_qoutfifo (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_intr (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_outw (struct ahd_softc*,int ,int ) ;
 int ahd_pause (struct ahd_softc*) ;
 int ahd_platform_flushwork (struct ahd_softc*) ;
 int ahd_unpause (struct ahd_softc*) ;
 int aic_delay (int) ;
 int printf (char*,int) ;

void
ahd_pause_and_flushwork(struct ahd_softc *ahd)
{
 u_int intstat;
 u_int maxloops;

 maxloops = 1000;
 ahd->flags |= AHD_ALL_INTERRUPTS;
 ahd_pause(ahd);





 ahd->qfreeze_cnt--;
 ahd_outw(ahd, KERNEL_QFREEZE_COUNT, ahd->qfreeze_cnt);
 ahd_outb(ahd, SEQ_FLAGS2, ahd_inb(ahd, SEQ_FLAGS2) | SELECTOUT_QFROZEN);
 do {

  ahd_unpause(ahd);




  aic_delay(500);

  ahd_intr(ahd);
  ahd_pause(ahd);
  intstat = ahd_inb(ahd, INTSTAT);
  if ((intstat & INT_PEND) == 0) {
   ahd_clear_critical_section(ahd);
   intstat = ahd_inb(ahd, INTSTAT);
  }
 } while (--maxloops
       && (intstat != 0xFF || (ahd->features & AHD_REMOVABLE) == 0)
       && ((intstat & INT_PEND) != 0
        || (ahd_inb(ahd, SCSISEQ0) & ENSELO) != 0
        || (ahd_inb(ahd, SSTAT0) & (SELDO|SELINGO)) != 0));

 if (maxloops == 0) {
  printf("Infinite interrupt loop, INTSTAT = %x",
        ahd_inb(ahd, INTSTAT));
  AHD_FATAL_ERROR(ahd);
 }
 ahd->qfreeze_cnt++;
 ahd_outw(ahd, KERNEL_QFREEZE_COUNT, ahd->qfreeze_cnt);

 ahd_flush_qoutfifo(ahd);

 ahd_platform_flushwork(ahd);
 ahd->flags &= ~AHD_ALL_INTERRUPTS;
}
