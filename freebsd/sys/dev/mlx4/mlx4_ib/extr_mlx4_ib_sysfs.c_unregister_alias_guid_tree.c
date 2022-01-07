
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_ib_iov_port {int dentr_ar; TYPE_2__* dev; int cur_port; int mcgs_parent; int pkeys_parent; int gids_parent; int admin_alias_parent; } ;
struct mlx4_ib_dev {struct mlx4_ib_iov_port* iov_ports; TYPE_3__* dev; } ;
struct TYPE_4__ {int num_ports; } ;
struct TYPE_6__ {TYPE_1__ caps; } ;
struct TYPE_5__ {int ports_parent; } ;


 int kfree (int ) ;
 int kobject_put (int ) ;
 int mlx4_is_master (TYPE_3__*) ;

__attribute__((used)) static void unregister_alias_guid_tree(struct mlx4_ib_dev *device)
{
 struct mlx4_ib_iov_port *p;
 int i;

 if (!mlx4_is_master(device->dev))
  return;

 for (i = 0; i < device->dev->caps.num_ports; i++) {
  p = &device->iov_ports[i];
  kobject_put(p->admin_alias_parent);
  kobject_put(p->gids_parent);
  kobject_put(p->pkeys_parent);
  kobject_put(p->mcgs_parent);
  kobject_put(p->cur_port);
  kobject_put(p->cur_port);
  kobject_put(p->cur_port);
  kobject_put(p->cur_port);
  kobject_put(p->cur_port);
  kobject_put(p->dev->ports_parent);
  kfree(p->dentr_ar);
 }
}
