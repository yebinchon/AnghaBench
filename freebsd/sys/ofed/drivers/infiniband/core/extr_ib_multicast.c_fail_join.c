
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* callback ) (int,TYPE_1__*) ;} ;
struct mcast_member {TYPE_1__ multicast; int list; } ;
struct mcast_group {int lock; } ;


 int list_del_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (int,TYPE_1__*) ;

__attribute__((used)) static int fail_join(struct mcast_group *group, struct mcast_member *member,
       int status)
{
 spin_lock_irq(&group->lock);
 list_del_init(&member->list);
 spin_unlock_irq(&group->lock);
 return member->multicast.callback(status, &member->multicast);
}
