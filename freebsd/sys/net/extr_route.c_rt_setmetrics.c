
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtentry {scalar_t__ rt_mtu; scalar_t__ rt_expire; int rt_weight; int rt_flags; } ;
struct rt_addrinfo {int rti_mflags; TYPE_1__* rti_rmx; } ;
struct TYPE_2__ {scalar_t__ rmx_mtu; scalar_t__ rmx_expire; int rmx_weight; } ;


 int RTF_FIXEDMTU ;
 int RTV_EXPIRE ;
 int RTV_MTU ;
 int RTV_WEIGHT ;
 scalar_t__ time_second ;
 scalar_t__ time_uptime ;

__attribute__((used)) static void
rt_setmetrics(const struct rt_addrinfo *info, struct rtentry *rt)
{

 if (info->rti_mflags & RTV_MTU) {
  if (info->rti_rmx->rmx_mtu != 0) {





   rt->rt_flags |= RTF_FIXEDMTU;
  } else {





   rt->rt_flags &= ~RTF_FIXEDMTU;
  }
  rt->rt_mtu = info->rti_rmx->rmx_mtu;
 }
 if (info->rti_mflags & RTV_WEIGHT)
  rt->rt_weight = info->rti_rmx->rmx_weight;

 if (info->rti_mflags & RTV_EXPIRE)
  rt->rt_expire = info->rti_rmx->rmx_expire ?
      info->rti_rmx->rmx_expire - time_second + time_uptime : 0;
}
