
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {scalar_t__ rt_ifp; scalar_t__ rt_mtu; int rt_flags; } ;
struct radix_node {int dummy; } ;
struct if_mtuinfo {scalar_t__ ifp; scalar_t__ mtu; } ;


 int RTF_FIXEDMTU ;
 int RTF_GATEWAY ;
 int RTF_HOST ;

__attribute__((used)) static int
if_updatemtu_cb(struct radix_node *rn, void *arg)
{
 struct rtentry *rt;
 struct if_mtuinfo *ifmtu;

 rt = (struct rtentry *)rn;
 ifmtu = (struct if_mtuinfo *)arg;

 if (rt->rt_ifp != ifmtu->ifp)
  return (0);

 if (rt->rt_mtu >= ifmtu->mtu) {

  rt->rt_mtu = ifmtu->mtu;
  return (0);
 }




 if ((rt->rt_flags & (RTF_FIXEDMTU | RTF_GATEWAY | RTF_HOST)) != 0) {





  return (0);
 }


 rt->rt_mtu = ifmtu->mtu;

 return (0);
}
