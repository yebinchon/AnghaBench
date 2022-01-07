
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_id_private {int * cma_dev; int list; } ;


 int cma_deref_dev (int *) ;
 int list_del (int *) ;
 int lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cma_release_dev(struct rdma_id_private *id_priv)
{
 mutex_lock(&lock);
 list_del(&id_priv->list);
 cma_deref_dev(id_priv->cma_dev);
 id_priv->cma_dev = ((void*)0);
 mutex_unlock(&lock);
}
