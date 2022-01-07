
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct rtentry {int rt_flags; scalar_t__ rt_ifp; } ;
struct route {struct rtentry* ro_rt; int ro_dst; } ;
struct radix_node {int dummy; } ;


 int RTFREE_LOCKED (struct rtentry*) ;
 int RTF_UP ;
 int RT_ADDREF (struct rtentry*) ;
 scalar_t__ RT_LINK_IS_UP (scalar_t__) ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int * rn_mpath_next (struct radix_node*) ;
 struct rtentry* rt_mpath_selectrte (struct rtentry*,int ) ;
 struct rtentry* rtalloc1_fib (int *,int,int ,int ) ;

void
rtalloc_mpath_fib(struct route *ro, uint32_t hash, u_int fibnum)
{
 struct rtentry *rt;





 if (ro->ro_rt && ro->ro_rt->rt_ifp && (ro->ro_rt->rt_flags & RTF_UP)
     && RT_LINK_IS_UP(ro->ro_rt->rt_ifp))
  return;
 ro->ro_rt = rtalloc1_fib(&ro->ro_dst, 1, 0, fibnum);


 if (ro->ro_rt == ((void*)0))
  return;
 if (rn_mpath_next((struct radix_node *)ro->ro_rt) == ((void*)0)) {
  RT_UNLOCK(ro->ro_rt);
  return;
 }

 rt = rt_mpath_selectrte(ro->ro_rt, hash);



 if (!rt) {
  RT_UNLOCK(ro->ro_rt);
  ro->ro_rt = ((void*)0);
  return;
 }
 if (ro->ro_rt != rt) {
  RTFREE_LOCKED(ro->ro_rt);
  ro->ro_rt = rt;
  RT_LOCK(ro->ro_rt);
  RT_ADDREF(ro->ro_rt);

 }
 RT_UNLOCK(ro->ro_rt);
}
