
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int (* cm_handler ) (TYPE_3__*,struct iw_cm_event*) ;TYPE_2__* device; } ;
struct iwcm_id_private {int state; int lock; TYPE_3__ id; int * qp; } ;
struct iw_cm_event {int dummy; } ;
struct TYPE_5__ {TYPE_1__* iwcm; } ;
struct TYPE_4__ {int (* rem_ref ) (int *) ;} ;


 int BUG () ;



 int IW_CM_STATE_IDLE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int *) ;
 int stub2 (TYPE_3__*,struct iw_cm_event*) ;

__attribute__((used)) static int cm_close_handler(struct iwcm_id_private *cm_id_priv,
      struct iw_cm_event *iw_event)
{
 unsigned long flags;
 int ret = 0;
 spin_lock_irqsave(&cm_id_priv->lock, flags);

 if (cm_id_priv->qp) {
  cm_id_priv->id.device->iwcm->rem_ref(cm_id_priv->qp);
  cm_id_priv->qp = ((void*)0);
 }
 switch (cm_id_priv->state) {
 case 128:
 case 130:
  cm_id_priv->state = IW_CM_STATE_IDLE;
  spin_unlock_irqrestore(&cm_id_priv->lock, flags);
  ret = cm_id_priv->id.cm_handler(&cm_id_priv->id, iw_event);
  spin_lock_irqsave(&cm_id_priv->lock, flags);
  break;
 case 129:
  break;
 default:
  BUG();
 }
 spin_unlock_irqrestore(&cm_id_priv->lock, flags);

 return ret;
}
