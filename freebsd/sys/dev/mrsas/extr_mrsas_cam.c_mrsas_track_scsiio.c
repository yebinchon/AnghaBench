
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
typedef scalar_t__ target_id_t ;
struct mrsas_softc {int max_fw_cmds; int mrsas_dev; struct mrsas_mpt_cmd** mpt_cmd_list; } ;
struct mrsas_mpt_cmd {TYPE_3__* ccb_ptr; } ;
struct TYPE_5__ {int target_id; } ;
struct TYPE_4__ {int bus_id; } ;
struct TYPE_6__ {TYPE_2__ ccb_h; TYPE_1__ cpi; } ;


 int FAIL ;
 int MRSAS_MAX_PD ;
 int SUCCESS ;
 int device_printf (int ,char*,scalar_t__) ;

__attribute__((used)) static int
mrsas_track_scsiio(struct mrsas_softc *sc, target_id_t tgt_id, u_int32_t bus_id)
{
 int i;
 struct mrsas_mpt_cmd *mpt_cmd = ((void*)0);

 for (i = 0 ; i < sc->max_fw_cmds; i++) {
  mpt_cmd = sc->mpt_cmd_list[i];




 if (mpt_cmd->ccb_ptr) {

  if (bus_id == 1)
   tgt_id = (mpt_cmd->ccb_ptr->ccb_h.target_id - (MRSAS_MAX_PD - 1));

   if (mpt_cmd->ccb_ptr->cpi.bus_id == bus_id &&
       mpt_cmd->ccb_ptr->ccb_h.target_id == tgt_id) {
    device_printf(sc->mrsas_dev,
        "IO commands pending to target id %d\n", tgt_id);
    return FAIL;
   }
  }
 }

 return SUCCESS;
}
