
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_short ;


 int IFNET_WLOCK_ASSERT () ;
 size_t USHRT_MAX ;
 size_t V_if_index ;
 size_t V_if_indexlim ;
 int ** V_ifindex_table ;
 void* if_grow () ;

__attribute__((used)) static u_short
ifindex_alloc(void **old)
{
 u_short idx;

 IFNET_WLOCK_ASSERT();




 for (idx = 1; idx <= V_if_index; idx++) {
  if (V_ifindex_table[idx] == ((void*)0))
   break;
 }


 if (idx >= V_if_indexlim) {
  *old = if_grow();
  return (USHRT_MAX);
 }
 if (idx > V_if_index)
  V_if_index = idx;
 return (idx);
}
