
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cm_id_private {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int lock; } ;


 TYPE_1__ cm ;
 struct cm_id_private* cm_get_id (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct cm_id_private * cm_acquire_id(__be32 local_id, __be32 remote_id)
{
 struct cm_id_private *cm_id_priv;

 spin_lock_irq(&cm.lock);
 cm_id_priv = cm_get_id(local_id, remote_id);
 spin_unlock_irq(&cm.lock);

 return cm_id_priv;
}
