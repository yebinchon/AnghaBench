
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_id_private {int comp; int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static void cma_deref_id(struct rdma_id_private *id_priv)
{
 if (atomic_dec_and_test(&id_priv->refcount))
  complete(&id_priv->comp);
}
