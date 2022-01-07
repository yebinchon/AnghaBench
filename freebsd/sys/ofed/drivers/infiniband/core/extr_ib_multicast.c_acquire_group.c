
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
struct mcast_port {int lock; int refcount; } ;
struct TYPE_2__ {union ib_gid mgid; } ;
struct mcast_group {int retries; int refcount; int lock; int work; int active_list; int pending_list; int pkey_index; TYPE_1__ rec; struct mcast_port* port; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MCAST_INVALID_PKEY_INDEX ;
 int atomic_inc (int *) ;
 int kfree (struct mcast_group*) ;
 struct mcast_group* kzalloc (int,int ) ;
 struct mcast_group* mcast_find (struct mcast_port*,union ib_gid*) ;
 struct mcast_group* mcast_insert (struct mcast_port*,struct mcast_group*,int) ;
 int mcast_work_handler ;
 int memcmp (int *,union ib_gid*,int) ;
 int mgid0 ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct mcast_group *acquire_group(struct mcast_port *port,
      union ib_gid *mgid, gfp_t gfp_mask)
{
 struct mcast_group *group, *cur_group;
 unsigned long flags;
 int is_mgid0;

 is_mgid0 = !memcmp(&mgid0, mgid, sizeof mgid0);
 if (!is_mgid0) {
  spin_lock_irqsave(&port->lock, flags);
  group = mcast_find(port, mgid);
  if (group)
   goto found;
  spin_unlock_irqrestore(&port->lock, flags);
 }

 group = kzalloc(sizeof *group, gfp_mask);
 if (!group)
  return ((void*)0);

 group->retries = 3;
 group->port = port;
 group->rec.mgid = *mgid;
 group->pkey_index = MCAST_INVALID_PKEY_INDEX;
 INIT_LIST_HEAD(&group->pending_list);
 INIT_LIST_HEAD(&group->active_list);
 INIT_WORK(&group->work, mcast_work_handler);
 spin_lock_init(&group->lock);

 spin_lock_irqsave(&port->lock, flags);
 cur_group = mcast_insert(port, group, is_mgid0);
 if (cur_group) {
  kfree(group);
  group = cur_group;
 } else
  atomic_inc(&port->refcount);
found:
 atomic_inc(&group->refcount);
 spin_unlock_irqrestore(&port->lock, flags);
 return group;
}
