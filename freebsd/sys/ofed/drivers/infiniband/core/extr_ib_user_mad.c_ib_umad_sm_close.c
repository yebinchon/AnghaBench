
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ib_umad_port {TYPE_1__* umad_dev; int sm_sem; int file_mutex; int port_num; scalar_t__ ib_dev; } ;
struct ib_port_modify {int clr_port_cap_mask; } ;
struct file {struct ib_umad_port* private_data; } ;
struct TYPE_2__ {int kobj; } ;


 int IB_PORT_SM ;
 int ib_modify_port (scalar_t__,int ,int ,struct ib_port_modify*) ;
 int kobject_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up (int *) ;

__attribute__((used)) static int ib_umad_sm_close(struct inode *inode, struct file *filp)
{
 struct ib_umad_port *port = filp->private_data;
 struct ib_port_modify props = {
  .clr_port_cap_mask = IB_PORT_SM
 };
 int ret = 0;

 mutex_lock(&port->file_mutex);
 if (port->ib_dev)
  ret = ib_modify_port(port->ib_dev, port->port_num, 0, &props);
 mutex_unlock(&port->file_mutex);

 up(&port->sm_sem);

 kobject_put(&port->umad_dev->kobj);

 return ret;
}
