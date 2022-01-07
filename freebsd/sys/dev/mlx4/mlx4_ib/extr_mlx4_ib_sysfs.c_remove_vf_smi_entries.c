
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int attr; } ;
struct TYPE_4__ {int attr; } ;
struct mlx4_port {scalar_t__ slave; TYPE_2__ enable_smi_admin; int kobj; TYPE_1__ smi_enabled; TYPE_3__* dev; int port_num; } ;
struct TYPE_6__ {int dev; int ib_dev; } ;


 scalar_t__ IB_LINK_LAYER_ETHERNET ;
 scalar_t__ mlx4_master_func_num (int ) ;
 scalar_t__ rdma_port_get_link_layer (int *,int ) ;
 int sysfs_remove_file (int *,int *) ;

__attribute__((used)) static void remove_vf_smi_entries(struct mlx4_port *p)
{
 int is_eth = rdma_port_get_link_layer(&p->dev->ib_dev, p->port_num) ==
   IB_LINK_LAYER_ETHERNET;

 if (is_eth || p->slave == mlx4_master_func_num(p->dev->dev))
  return;

 sysfs_remove_file(&p->kobj, &p->smi_enabled.attr);
 sysfs_remove_file(&p->kobj, &p->enable_smi_admin.attr);
}
