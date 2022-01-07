
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int join_state; } ;
struct TYPE_3__ {TYPE_2__ rec; } ;
struct mcast_member {int list; TYPE_1__ multicast; int state; } ;
struct mcast_group {int active_list; TYPE_2__ rec; } ;


 int MCAST_MEMBER ;
 int adjust_membership (struct mcast_group*,int ,int) ;
 int list_move (int *,int *) ;

__attribute__((used)) static void join_group(struct mcast_group *group, struct mcast_member *member,
         u8 join_state)
{
 member->state = MCAST_MEMBER;
 adjust_membership(group, join_state, 1);
 group->rec.join_state |= join_state;
 member->multicast.rec = group->rec;
 member->multicast.rec.join_state = join_state;
 list_move(&member->list, &group->active_list);
}
