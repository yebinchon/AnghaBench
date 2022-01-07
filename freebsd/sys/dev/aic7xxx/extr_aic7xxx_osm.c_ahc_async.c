
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct ahc_softc {int dummy; } ;
struct ahc_devinfo {int dummy; } ;



 int AHC_TRANS_CUR ;
 int AHC_TRANS_GOAL ;
 int FALSE ;
 int MSG_EXT_WDTR_BUS_8_BIT ;
 int ROLE_UNKNOWN ;
 int SIM_CHANNEL (struct ahc_softc*,struct cam_sim*) ;
 int SIM_SCSI_ID (struct ahc_softc*,struct cam_sim*) ;
 int ahc_compile_devinfo (struct ahc_devinfo*,int ,int ,int ,int ,int ) ;
 int ahc_set_syncrate (struct ahc_softc*,struct ahc_devinfo*,int *,int ,int ,int ,int,int ) ;
 int ahc_set_width (struct ahc_softc*,struct ahc_devinfo*,int ,int,int ) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int xpt_path_lun_id (struct cam_path*) ;
 int xpt_path_target_id (struct cam_path*) ;

__attribute__((used)) static void
ahc_async(void *callback_arg, uint32_t code, struct cam_path *path, void *arg)
{
 struct ahc_softc *ahc;
 struct cam_sim *sim;

 sim = (struct cam_sim *)callback_arg;
 ahc = (struct ahc_softc *)cam_sim_softc(sim);
 switch (code) {
 case 128:
 {
  struct ahc_devinfo devinfo;

  ahc_compile_devinfo(&devinfo, SIM_SCSI_ID(ahc, sim),
        xpt_path_target_id(path),
        xpt_path_lun_id(path),
        SIM_CHANNEL(ahc, sim),
        ROLE_UNKNOWN);





  ahc_set_width(ahc, &devinfo, MSG_EXT_WDTR_BUS_8_BIT,
         AHC_TRANS_GOAL|AHC_TRANS_CUR, FALSE);
  ahc_set_syncrate(ahc, &devinfo, ((void*)0),
               0, 0, 0,
     AHC_TRANS_GOAL|AHC_TRANS_CUR,
               FALSE);
  break;
 }
 default:
  break;
 }
}
