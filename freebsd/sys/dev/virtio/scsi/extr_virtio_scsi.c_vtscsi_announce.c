
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ target_id_t ;
struct vtscsi_softc {int vtscsi_sim; struct cam_path* vtscsi_path; } ;
struct cam_path {int dummy; } ;
typedef scalar_t__ lun_id_t ;


 scalar_t__ CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_TARGET_WILDCARD ;
 int VTSCSI_ERROR ;
 int cam_sim_path (int ) ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*) ;
 int xpt_async (int ,struct cam_path*,int *) ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,scalar_t__,scalar_t__) ;
 int xpt_free_path (struct cam_path*) ;

__attribute__((used)) static void
vtscsi_announce(struct vtscsi_softc *sc, uint32_t ac_code,
    target_id_t target_id, lun_id_t lun_id)
{
 struct cam_path *path;


 if (target_id == CAM_TARGET_WILDCARD && lun_id == CAM_LUN_WILDCARD) {
  xpt_async(ac_code, sc->vtscsi_path, ((void*)0));
  return;
 }

 if (xpt_create_path(&path, ((void*)0), cam_sim_path(sc->vtscsi_sim),
     target_id, lun_id) != CAM_REQ_CMP) {
  vtscsi_dprintf(sc, VTSCSI_ERROR, "cannot create path\n");
  return;
 }

 xpt_async(ac_code, path, ((void*)0));
 xpt_free_path(path);
}
