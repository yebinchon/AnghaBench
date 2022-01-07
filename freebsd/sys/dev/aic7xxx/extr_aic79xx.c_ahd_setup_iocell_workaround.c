
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int flags; } ;
typedef int ahd_mode_state ;


 int AHD_HAD_FIRST_SEL ;
 int AHD_MODE_CFG ;
 int AHD_SHOW_MISC ;
 int BYPASSENAB ;
 int DSPDATACTL ;
 int ENSELDI ;
 int ENSELDO ;
 int RCVROFFSTDIS ;
 int SIMODE0 ;
 int XMITOFFSTDIS ;
 int ahd_debug ;
 int ahd_inb (struct ahd_softc*,int ) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_restore_modes (struct ahd_softc*,int ) ;
 int ahd_save_modes (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
ahd_setup_iocell_workaround(struct ahd_softc *ahd)
{
 ahd_mode_state saved_modes;

 saved_modes = ahd_save_modes(ahd);
 ahd_set_modes(ahd, AHD_MODE_CFG, AHD_MODE_CFG);
 ahd_outb(ahd, DSPDATACTL, ahd_inb(ahd, DSPDATACTL)
        | BYPASSENAB | RCVROFFSTDIS | XMITOFFSTDIS);
 ahd_outb(ahd, SIMODE0, ahd_inb(ahd, SIMODE0) | (ENSELDO|ENSELDI));




 ahd_restore_modes(ahd, saved_modes);
 ahd->flags &= ~AHD_HAD_FIRST_SEL;
}
