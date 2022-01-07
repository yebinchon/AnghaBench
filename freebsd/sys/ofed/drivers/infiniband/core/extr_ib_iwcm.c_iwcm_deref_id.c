
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwcm_id_private {int work_list; int refcount; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int free_cm_id (struct iwcm_id_private*) ;
 int list_empty (int *) ;

__attribute__((used)) static int iwcm_deref_id(struct iwcm_id_private *cm_id_priv)
{
 BUG_ON(atomic_read(&cm_id_priv->refcount)==0);
 if (atomic_dec_and_test(&cm_id_priv->refcount)) {
  BUG_ON(!list_empty(&cm_id_priv->work_list));
  free_cm_id(cm_id_priv);
  return 1;
 }

 return 0;
}
