
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vnet {int dummy; } ;
struct TYPE_5__ {struct vnet* net; } ;
struct TYPE_6__ {TYPE_1__ dev_addr; } ;
struct TYPE_7__ {TYPE_2__ addr; } ;
struct TYPE_8__ {TYPE_3__ route; } ;
struct rdma_id_private {int node; TYPE_4__ id; struct rdma_bind_list* bind_list; } ;
struct rdma_bind_list {int port; int ps; int owners; } ;


 int cma_ps_remove (struct vnet*,int ,int ) ;
 int hlist_del (int *) ;
 scalar_t__ hlist_empty (int *) ;
 int kfree (struct rdma_bind_list*) ;
 int lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cma_release_port(struct rdma_id_private *id_priv)
{
 struct rdma_bind_list *bind_list = id_priv->bind_list;
 struct vnet *net = id_priv->id.route.addr.dev_addr.net;

 if (!bind_list)
  return;

 mutex_lock(&lock);
 hlist_del(&id_priv->node);
 if (hlist_empty(&bind_list->owners)) {
  cma_ps_remove(net, bind_list->ps, bind_list->port);
  kfree(bind_list);
 }
 mutex_unlock(&lock);
}
