
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ priv; int Result; TYPE_4__* target; } ;
struct TYPE_11__ {TYPE_1__* transform; } ;
struct TYPE_12__ {TYPE_2__ array; } ;
struct TYPE_13__ {TYPE_3__ u; int type; } ;
struct TYPE_10__ {TYPE_4__* target; } ;
typedef TYPE_4__* PVDEV ;
typedef TYPE_5__* PCOMMAND ;


 int HPT_ASSERT (TYPE_4__*) ;
 int RETURN_PENDING ;
 scalar_t__ mIsArray (int ) ;
 int vdev_queue_cmd (TYPE_5__*) ;
 int wakeup (TYPE_5__*) ;

__attribute__((used)) static void hpt_flush_done(PCOMMAND pCmd)
{
 PVDEV vd = pCmd->target;

 if (mIsArray(vd->type) && vd->u.array.transform && vd!=vd->u.array.transform->target) {
  vd = vd->u.array.transform->target;
  HPT_ASSERT(vd);
  pCmd->target = vd;
  pCmd->Result = RETURN_PENDING;
  vdev_queue_cmd(pCmd);
  return;
 }

 *(int *)pCmd->priv = 1;
 wakeup(pCmd);
}
