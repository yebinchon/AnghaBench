
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int transport; } ;
struct TYPE_6__ {TYPE_5__ dev_addr; } ;
struct TYPE_7__ {TYPE_1__ addr; } ;
struct TYPE_8__ {TYPE_2__ route; TYPE_4__* device; } ;
struct rdma_id_private {int list; TYPE_3__ id; scalar_t__ gid_type; struct cma_device* cma_dev; } ;
struct cma_device {int id_list; TYPE_4__* device; } ;
struct TYPE_9__ {int node_type; } ;


 int cma_ref_dev (struct cma_device*) ;
 int list_add_tail (int *,int *) ;
 int rdma_node_get_transport (int ) ;

__attribute__((used)) static void _cma_attach_to_dev(struct rdma_id_private *id_priv,
          struct cma_device *cma_dev)
{
 cma_ref_dev(cma_dev);
 id_priv->cma_dev = cma_dev;
 id_priv->gid_type = 0;
 id_priv->id.device = cma_dev->device;
 id_priv->id.route.addr.dev_addr.transport =
  rdma_node_get_transport(cma_dev->device->node_type);
 list_add_tail(&id_priv->list, &cma_dev->id_list);
}
