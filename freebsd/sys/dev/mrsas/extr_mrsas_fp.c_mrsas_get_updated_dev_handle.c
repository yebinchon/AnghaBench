
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int8_t ;
typedef int u_int16_t ;
struct mrsas_softc {int map_id; int ** ld_drv_map; } ;
struct IO_REQUEST_INFO {int pdInterface; } ;
struct TYPE_4__ {int * scsi_pending_cmds; } ;
typedef TYPE_1__* PLD_LOAD_BALANCE_INFO ;
typedef int MR_DRV_RAID_MAP_ALL ;


 int MR_PdDevHandleGet (size_t,int *) ;
 int MR_PdInterfaceTypeGet (size_t,int *) ;
 int mrsas_atomic_inc (int *) ;
 size_t mrsas_get_best_arm_pd (struct mrsas_softc*,TYPE_1__*,struct IO_REQUEST_INFO*) ;

u_int16_t
mrsas_get_updated_dev_handle(struct mrsas_softc *sc,
    PLD_LOAD_BALANCE_INFO lbInfo, struct IO_REQUEST_INFO *io_info)
{
 u_int8_t arm_pd;
 u_int16_t devHandle;
 MR_DRV_RAID_MAP_ALL *drv_map;

 drv_map = sc->ld_drv_map[(sc->map_id & 1)];


 arm_pd = mrsas_get_best_arm_pd(sc, lbInfo, io_info);
 devHandle = MR_PdDevHandleGet(arm_pd, drv_map);
 io_info->pdInterface = MR_PdInterfaceTypeGet(arm_pd, drv_map);
 mrsas_atomic_inc(&lbInfo->scsi_pending_cmds[arm_pd]);

 return devHandle;
}
