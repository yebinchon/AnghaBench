
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef size_t u8 ;
struct mcast_port {int lock; } ;
struct ib_sa_mcmember_rec {int dummy; } ;
struct mcast_group {struct ib_sa_mcmember_rec rec; } ;
struct mcast_device {size_t start_port; struct mcast_port* port; } ;
struct ib_device {int dummy; } ;


 int EADDRNOTAVAIL ;
 int ENODEV ;
 struct mcast_device* ib_get_client_data (struct ib_device*,int *) ;
 int mcast_client ;
 struct mcast_group* mcast_find (struct mcast_port*,union ib_gid*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ib_sa_get_mcmember_rec(struct ib_device *device, u8 port_num,
      union ib_gid *mgid, struct ib_sa_mcmember_rec *rec)
{
 struct mcast_device *dev;
 struct mcast_port *port;
 struct mcast_group *group;
 unsigned long flags;
 int ret = 0;

 dev = ib_get_client_data(device, &mcast_client);
 if (!dev)
  return -ENODEV;

 port = &dev->port[port_num - dev->start_port];
 spin_lock_irqsave(&port->lock, flags);
 group = mcast_find(port, mgid);
 if (group)
  *rec = group->rec;
 else
  ret = -EADDRNOTAVAIL;
 spin_unlock_irqrestore(&port->lock, flags);

 return ret;
}
