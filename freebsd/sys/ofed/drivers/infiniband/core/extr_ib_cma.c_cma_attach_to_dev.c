
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t port_num; } ;
struct rdma_id_private {TYPE_1__ id; int gid_type; } ;
struct cma_device {int device; int * default_gid_type; } ;


 int _cma_attach_to_dev (struct rdma_id_private*,struct cma_device*) ;
 size_t rdma_start_port (int ) ;

__attribute__((used)) static void cma_attach_to_dev(struct rdma_id_private *id_priv,
         struct cma_device *cma_dev)
{
 _cma_attach_to_dev(id_priv, cma_dev);
 id_priv->gid_type =
  cma_dev->default_gid_type[id_priv->id.port_num -
       rdma_start_port(cma_dev->device)];
}
