
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mcast_group {int* members; } ;


 int NUM_JOIN_MEMBERSHIP_TYPES ;

__attribute__((used)) static void adjust_membership(struct mcast_group *group, u8 join_state, int inc)
{
 int i;

 for (i = 0; i < NUM_JOIN_MEMBERSHIP_TYPES; i++, join_state >>= 1)
  if (join_state & 0x1)
   group->members[i] += inc;
}
