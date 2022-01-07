
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_cm_id {int rem_ref; int add_ref; int event_handler; void* context; int cm_handler; struct ib_device* device; } ;
struct iwcm_id_private {struct iw_cm_id id; int work_free_list; int work_list; int destroy_comp; int connect_wait; int refcount; int lock; int state; } ;
struct ib_device {int dummy; } ;
typedef int iw_cm_handler ;


 int ENOMEM ;
 struct iw_cm_id* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IW_CM_STATE_IDLE ;
 int add_ref ;
 int atomic_set (int *,int) ;
 int cm_event_handler ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 struct iwcm_id_private* kzalloc (int,int ) ;
 int rem_ref ;
 int spin_lock_init (int *) ;

struct iw_cm_id *iw_create_cm_id(struct ib_device *device,
     iw_cm_handler cm_handler,
     void *context)
{
 struct iwcm_id_private *cm_id_priv;

 cm_id_priv = kzalloc(sizeof(*cm_id_priv), GFP_KERNEL);
 if (!cm_id_priv)
  return ERR_PTR(-ENOMEM);

 cm_id_priv->state = IW_CM_STATE_IDLE;
 cm_id_priv->id.device = device;
 cm_id_priv->id.cm_handler = cm_handler;
 cm_id_priv->id.context = context;
 cm_id_priv->id.event_handler = cm_event_handler;
 cm_id_priv->id.add_ref = add_ref;
 cm_id_priv->id.rem_ref = rem_ref;
 spin_lock_init(&cm_id_priv->lock);
 atomic_set(&cm_id_priv->refcount, 1);
 init_waitqueue_head(&cm_id_priv->connect_wait);
 init_completion(&cm_id_priv->destroy_comp);
 INIT_LIST_HEAD(&cm_id_priv->work_list);
 INIT_LIST_HEAD(&cm_id_priv->work_free_list);

 return &cm_id_priv->id;
}
