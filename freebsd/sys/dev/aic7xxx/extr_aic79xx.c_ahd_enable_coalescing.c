
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int hs_mailbox; } ;


 int ENINT_COALESCE ;
 int HS_MAILBOX ;
 int ahd_flush_device_writes (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int ) ;
 int ahd_run_qoutfifo (struct ahd_softc*) ;

void
ahd_enable_coalescing(struct ahd_softc *ahd, int enable)
{

 ahd->hs_mailbox &= ~ENINT_COALESCE;
 if (enable)
  ahd->hs_mailbox |= ENINT_COALESCE;
 ahd_outb(ahd, HS_MAILBOX, ahd->hs_mailbox);
 ahd_flush_device_writes(ahd);
 ahd_run_qoutfifo(ahd);
}
