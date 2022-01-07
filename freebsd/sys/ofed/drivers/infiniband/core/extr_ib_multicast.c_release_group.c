
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcast_port {int lock; int table; } ;
struct mcast_group {int node; int refcount; struct mcast_port* port; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int deref_port (struct mcast_port*) ;
 int kfree (struct mcast_group*) ;
 int rb_erase (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void release_group(struct mcast_group *group)
{
 struct mcast_port *port = group->port;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 if (atomic_dec_and_test(&group->refcount)) {
  rb_erase(&group->node, &port->table);
  spin_unlock_irqrestore(&port->lock, flags);
  kfree(group);
  deref_port(port);
 } else
  spin_unlock_irqrestore(&port->lock, flags);
}
