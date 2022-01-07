
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_short ;
struct ifnet {int dummy; } ;


 struct ifnet* ifnet_byindex (int ) ;

struct ifnet*
in6_getlinkifnet(uint32_t zoneid)
{

 return (ifnet_byindex((u_short)zoneid));
}
