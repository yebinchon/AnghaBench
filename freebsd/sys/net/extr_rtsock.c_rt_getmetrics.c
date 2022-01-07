
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {scalar_t__ rt_expire; int rt_pksent; int rt_weight; int rt_mtu; } ;
struct rt_metrics {scalar_t__ rmx_expire; int rmx_pksent; int rmx_weight; int rmx_mtu; } ;


 int bzero (struct rt_metrics*,int) ;
 int counter_u64_fetch (int ) ;
 scalar_t__ time_second ;
 scalar_t__ time_uptime ;

__attribute__((used)) static void
rt_getmetrics(const struct rtentry *rt, struct rt_metrics *out)
{

 bzero(out, sizeof(*out));
 out->rmx_mtu = rt->rt_mtu;
 out->rmx_weight = rt->rt_weight;
 out->rmx_pksent = counter_u64_fetch(rt->rt_pksent);

 out->rmx_expire = rt->rt_expire ?
     rt->rt_expire - time_uptime + time_second : 0;
}
