
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_short ;
struct ifnet {int dummy; } ;


 struct ifnet** V_ifindex_table ;

__attribute__((used)) static void
ifnet_setbyindex(u_short idx, struct ifnet *ifp)
{

 V_ifindex_table[idx] = ifp;
}
