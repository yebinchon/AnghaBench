
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int16_t ;
struct mrsas_softc {int lb_pending_cmds; } ;
struct TYPE_6__ {int level; scalar_t__ ldState; } ;
struct TYPE_5__ {int loadBalanceFlag; } ;
typedef TYPE_1__* PLD_LOAD_BALANCE_INFO ;
typedef TYPE_2__ MR_LD_RAID ;
typedef int MR_DRV_RAID_MAP_ALL ;


 int LB_PENDING_CMDS_DEFAULT ;
 int MAX_LOGICAL_DRIVES_EXT ;
 scalar_t__ MR_LD_STATE_OPTIMAL ;
 TYPE_2__* MR_LdRaidGet (int,int *) ;
 int MR_TargetIdToLdGet (int,int *) ;

void
mrsas_update_load_balance_params(struct mrsas_softc *sc,
    MR_DRV_RAID_MAP_ALL * drv_map, PLD_LOAD_BALANCE_INFO lbInfo)
{
 int ldCount;
 u_int16_t ld;
 MR_LD_RAID *raid;

 if (sc->lb_pending_cmds > 128 || sc->lb_pending_cmds < 1)
  sc->lb_pending_cmds = LB_PENDING_CMDS_DEFAULT;

 for (ldCount = 0; ldCount < MAX_LOGICAL_DRIVES_EXT; ldCount++) {
  ld = MR_TargetIdToLdGet(ldCount, drv_map);
  if (ld >= MAX_LOGICAL_DRIVES_EXT) {
   lbInfo[ldCount].loadBalanceFlag = 0;
   continue;
  }
  raid = MR_LdRaidGet(ld, drv_map);
  if ((raid->level != 1) ||
      (raid->ldState != MR_LD_STATE_OPTIMAL)) {
   lbInfo[ldCount].loadBalanceFlag = 0;
   continue;
  }
  lbInfo[ldCount].loadBalanceFlag = 1;
 }
}
