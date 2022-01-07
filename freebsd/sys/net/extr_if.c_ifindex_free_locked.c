
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_short ;


 int IFNET_WLOCK_ASSERT () ;
 size_t V_if_index ;
 int ** V_ifindex_table ;

__attribute__((used)) static void
ifindex_free_locked(u_short idx)
{

 IFNET_WLOCK_ASSERT();

 V_ifindex_table[idx] = ((void*)0);
 while (V_if_index > 0 &&
     V_ifindex_table[V_if_index] == ((void*)0))
  V_if_index--;
}
