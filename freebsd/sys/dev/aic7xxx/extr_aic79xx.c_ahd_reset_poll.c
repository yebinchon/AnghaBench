
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int flags; int reset_timer; } ;


 int AHD_MODE_SCSI ;
 int AHD_RESET_POLL_ACTIVE ;
 int AHD_RESET_POLL_MS ;
 int CLRSCSIRSTI ;
 int CLRSINT1 ;
 int ENAUTOATNP ;
 int ENRSELI ;
 int ENSCSIRST ;
 int ENSELI ;
 int SCSIRSTI ;
 int SCSISEQ1 ;
 int SCSISEQ_TEMPLATE ;
 int SIMODE1 ;
 int SSTAT1 ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_lock (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_pause (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int ahd_unlock (struct ahd_softc*) ;
 int ahd_unpause (struct ahd_softc*) ;
 int ahd_update_modes (struct ahd_softc*) ;
 int aic_release_simq (struct ahd_softc*) ;
 int aic_timer_reset (int *,int ,void (*) (void*),struct ahd_softc*) ;

__attribute__((used)) static void
ahd_reset_poll(void *arg)
{
 struct ahd_softc *ahd = (struct ahd_softc *)arg;
 u_int scsiseq1;

 ahd_lock(ahd);
 ahd_pause(ahd);
 ahd_update_modes(ahd);
 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
 ahd_outb(ahd, CLRSINT1, CLRSCSIRSTI);
 if ((ahd_inb(ahd, SSTAT1) & SCSIRSTI) != 0) {
  aic_timer_reset(&ahd->reset_timer, AHD_RESET_POLL_MS,
    ahd_reset_poll, ahd);
  ahd_unpause(ahd);
  ahd_unlock(ahd);
  return;
 }


 ahd_outb(ahd, SIMODE1, ahd_inb(ahd, SIMODE1) | ENSCSIRST);
 scsiseq1 = ahd_inb(ahd, SCSISEQ_TEMPLATE);
 ahd_outb(ahd, SCSISEQ1, scsiseq1 & (ENSELI|ENRSELI|ENAUTOATNP));
 ahd_unpause(ahd);
 ahd->flags &= ~AHD_RESET_POLL_ACTIVE;
 aic_release_simq(ahd);
 ahd_unlock(ahd);
}
