
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct ahd_softc {int dummy; } ;
struct ahd_devinfo {int dummy; } ;



 int AHD_TRANS_CUR ;
 int AHD_TRANS_GOAL ;
 int FALSE ;
 int MSG_EXT_WDTR_BUS_8_BIT ;
 int ROLE_UNKNOWN ;
 int SIM_CHANNEL (struct ahd_softc*,struct cam_sim*) ;
 int SIM_SCSI_ID (struct ahd_softc*,struct cam_sim*) ;
 int ahd_compile_devinfo (struct ahd_devinfo*,int ,int ,int ,int ,int ) ;
 int ahd_set_syncrate (struct ahd_softc*,struct ahd_devinfo*,int ,int ,int ,int,int ) ;
 int ahd_set_width (struct ahd_softc*,struct ahd_devinfo*,int ,int,int ) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int xpt_path_lun_id (struct cam_path*) ;
 int xpt_path_target_id (struct cam_path*) ;

__attribute__((used)) static void
ahd_async(void *callback_arg, uint32_t code, struct cam_path *path, void *arg)
{
 struct ahd_softc *ahd;
 struct cam_sim *sim;

 sim = (struct cam_sim *)callback_arg;
 ahd = (struct ahd_softc *)cam_sim_softc(sim);
 switch (code) {
 case 128:
 {
  struct ahd_devinfo devinfo;

  ahd_compile_devinfo(&devinfo, SIM_SCSI_ID(ahd, sim),
        xpt_path_target_id(path),
        xpt_path_lun_id(path),
        SIM_CHANNEL(ahd, sim),
        ROLE_UNKNOWN);





  ahd_set_width(ahd, &devinfo, MSG_EXT_WDTR_BUS_8_BIT,
         AHD_TRANS_GOAL|AHD_TRANS_CUR, FALSE);
  ahd_set_syncrate(ahd, &devinfo, 0, 0,
                    0, AHD_TRANS_GOAL|AHD_TRANS_CUR,
               FALSE);
  break;
 }
 default:
  break;
 }
}
