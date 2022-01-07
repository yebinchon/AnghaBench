
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {char* name; int mode; } ;
struct TYPE_9__ {TYPE_4__ attr; int * store; int show; } ;
struct TYPE_8__ {TYPE_4__ attr; int store; int show; } ;
struct mlx4_port {scalar_t__ slave; TYPE_3__ smi_enabled; int kobj; TYPE_2__ enable_smi_admin; TYPE_1__* dev; int port_num; } ;
struct TYPE_7__ {int dev; int ib_dev; } ;


 scalar_t__ IB_LINK_LAYER_ETHERNET ;
 scalar_t__ mlx4_master_func_num (int ) ;
 int pr_err (char*) ;
 scalar_t__ rdma_port_get_link_layer (int *,int ) ;
 int sysfs_attr_init (TYPE_4__*) ;
 int sysfs_create_file (int *,TYPE_4__*) ;
 int sysfs_remove_file (int *,TYPE_4__*) ;
 int sysfs_show_enable_smi_admin ;
 int sysfs_show_smi_enabled ;
 int sysfs_store_enable_smi_admin ;

__attribute__((used)) static int add_vf_smi_entries(struct mlx4_port *p)
{
 int is_eth = rdma_port_get_link_layer(&p->dev->ib_dev, p->port_num) ==
   IB_LINK_LAYER_ETHERNET;
 int ret;


 if (is_eth || p->slave == mlx4_master_func_num(p->dev->dev))
  return 0;

 sysfs_attr_init(&p->smi_enabled.attr);
 p->smi_enabled.show = sysfs_show_smi_enabled;
 p->smi_enabled.store = ((void*)0);
 p->smi_enabled.attr.name = "smi_enabled";
 p->smi_enabled.attr.mode = 0444;
 ret = sysfs_create_file(&p->kobj, &p->smi_enabled.attr);
 if (ret) {
  pr_err("failed to create smi_enabled\n");
  return ret;
 }

 sysfs_attr_init(&p->enable_smi_admin.attr);
 p->enable_smi_admin.show = sysfs_show_enable_smi_admin;
 p->enable_smi_admin.store = sysfs_store_enable_smi_admin;
 p->enable_smi_admin.attr.name = "enable_smi_admin";
 p->enable_smi_admin.attr.mode = 0644;
 ret = sysfs_create_file(&p->kobj, &p->enable_smi_admin.attr);
 if (ret) {
  pr_err("failed to create enable_smi_admin\n");
  sysfs_remove_file(&p->kobj, &p->smi_enabled.attr);
  return ret;
 }
 return 0;
}
