
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_19__ {int hard_flush; } ;
struct TYPE_21__ {int* priv; scalar_t__ Result; int done; TYPE_7__* target; TYPE_6__ flags; int type; } ;
struct TYPE_17__ {TYPE_3__* transform; } ;
struct TYPE_18__ {TYPE_4__ array; } ;
struct TYPE_20__ {int vbus; int cmds_per_request; TYPE_5__ u; int type; } ;
struct TYPE_16__ {TYPE_2__* target; TYPE_1__* source; } ;
struct TYPE_15__ {int cmds_per_request; } ;
struct TYPE_14__ {int cmds_per_request; } ;
typedef TYPE_7__* PVDEV ;
typedef int PVBUS_EXT ;
typedef TYPE_8__* PCOMMAND ;
typedef int HPT_UINT ;


 int CMD_TYPE_FLUSH ;
 int HPT_OSM_TIMEOUT ;
 int KdPrint (char*) ;
 int PPAUSE ;
 scalar_t__ RETURN_SUCCESS ;
 int hpt_flush_done ;
 int hpt_lock_vbus (int ) ;
 scalar_t__ hpt_sleep (int ,TYPE_8__*,int ,char*,int ) ;
 int hpt_unlock_vbus (int ) ;
 TYPE_8__* ldm_alloc_cmds (int ,int ) ;
 int ldm_free_cmds (TYPE_8__*) ;
 int ldm_queue_cmd (TYPE_8__*) ;
 int ldm_reset_vbus (int ) ;
 scalar_t__ mIsArray (int ) ;
 int max (int ,int ) ;

__attribute__((used)) static int hpt_flush_vdev(PVBUS_EXT vbus_ext, PVDEV vd)
{
 PCOMMAND pCmd;
 int result = 0, done;
 HPT_UINT count;

 KdPrint(("flusing dev %p", vd));

 hpt_lock_vbus(vbus_ext);

 if (mIsArray(vd->type) && vd->u.array.transform)
  count = max(vd->u.array.transform->source->cmds_per_request,
     vd->u.array.transform->target->cmds_per_request);
 else
  count = vd->cmds_per_request;

 pCmd = ldm_alloc_cmds(vd->vbus, count);

 if (!pCmd) {
  hpt_unlock_vbus(vbus_ext);
  return -1;
 }

 pCmd->type = CMD_TYPE_FLUSH;
 pCmd->flags.hard_flush = 1;
 pCmd->target = vd;
 pCmd->done = hpt_flush_done;
 done = 0;
 pCmd->priv = &done;

 ldm_queue_cmd(pCmd);

 if (!done) {
  while (hpt_sleep(vbus_ext, pCmd, PPAUSE, "hptfls", HPT_OSM_TIMEOUT)) {
   ldm_reset_vbus(vd->vbus);
  }
 }

 KdPrint(("flush result %d", pCmd->Result));

 if (pCmd->Result!=RETURN_SUCCESS)
  result = -1;

 ldm_free_cmds(pCmd);

 hpt_unlock_vbus(vbus_ext);

 return result;
}
