
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;
typedef int ahd_mode_state ;


 int AHD_MODE_SCSI ;
 int AHD_SCB_MAX ;
 int SCB_CONTROL ;
 int SCB_NEXT ;
 int SCB_NEXT2 ;
 int SCB_RESIDUAL_SGPTR ;
 int SCB_SCSIID ;
 int SCB_SGPTR ;
 int ahd_get_scbptr (struct ahd_softc*) ;
 int ahd_inb_scbram (struct ahd_softc*,int ) ;
 int ahd_inl_scbram (struct ahd_softc*,int ) ;
 int ahd_inw_scbram (struct ahd_softc*,int ) ;
 int ahd_restore_modes (struct ahd_softc*,int ) ;
 int ahd_save_modes (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int ahd_set_scbptr (struct ahd_softc*,int) ;
 int printf (char*,...) ;

void
ahd_dump_scbs(struct ahd_softc *ahd)
{
 ahd_mode_state saved_modes;
 u_int saved_scb_index;
 int i;

 saved_modes = ahd_save_modes(ahd);
 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
 saved_scb_index = ahd_get_scbptr(ahd);
 for (i = 0; i < AHD_SCB_MAX; i++) {
  ahd_set_scbptr(ahd, i);
  printf("%3d", i);
  printf("(CTRL 0x%x ID 0x%x N 0x%x N2 0x%x SG 0x%x, RSG 0x%x)\n",
         ahd_inb_scbram(ahd, SCB_CONTROL),
         ahd_inb_scbram(ahd, SCB_SCSIID),
         ahd_inw_scbram(ahd, SCB_NEXT),
         ahd_inw_scbram(ahd, SCB_NEXT2),
         ahd_inl_scbram(ahd, SCB_SGPTR),
         ahd_inl_scbram(ahd, SCB_RESIDUAL_SGPTR));
 }
 printf("\n");
 ahd_set_scbptr(ahd, saved_scb_index);
 ahd_restore_modes(ahd, saved_modes);
}
