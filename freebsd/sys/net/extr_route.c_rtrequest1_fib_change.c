
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int ;
struct rtentry {int rt_flags; int rt_mtu; int rt_nodes; int * rt_ifp; TYPE_6__* rt_ifa; } ;
struct rt_addrinfo {int rti_flags; TYPE_6__* rti_ifa; TYPE_1__** rti_info; int * rti_ifp; } ;
struct rib_head {int rnh_gen; int head; scalar_t__ (* rnh_lookup ) (TYPE_1__*,TYPE_1__*,int *) ;} ;
struct if_mtuinfo {int mtu; int * ifp; } ;
struct TYPE_9__ {int (* ifa_rtrequest ) (int ,struct rtentry*,struct rt_addrinfo*) ;int ifa_addr; } ;
struct TYPE_8__ {int sa_family; } ;


 int ESRCH ;
 int RIB_WLOCK_ASSERT (struct rib_head*) ;
 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 size_t RTAX_IFA ;
 size_t RTAX_IFP ;
 size_t RTAX_NETMASK ;
 int RTF_FMASK ;
 int RTF_GATEWAY ;
 int RTF_RNH_LOCKED ;
 int RTM_ADD ;
 int RTM_DELETE ;
 int RT_ADDREF (struct rtentry*) ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int if_getmtu_family (int *,int) ;
 int if_updatemtu_cb (int ,struct if_mtuinfo*) ;
 int ifa_free (TYPE_6__*) ;
 int ifa_ref (TYPE_6__*) ;
 int rt_getifa_fib (struct rt_addrinfo*,int ) ;
 int rt_key (struct rtentry*) ;
 scalar_t__ rt_mpath_capable (struct rib_head*) ;
 struct rtentry* rt_mpath_matchgate (struct rtentry*,TYPE_1__*) ;
 int rt_setgate (struct rtentry*,int ,TYPE_1__*) ;
 int rt_setmetrics (struct rt_addrinfo*,struct rtentry*) ;
 int sa_equal (TYPE_1__*,int ) ;
 scalar_t__ stub1 (TYPE_1__*,TYPE_1__*,int *) ;
 int stub2 (int ,struct rtentry*,struct rt_addrinfo*) ;
 int stub3 (int ,struct rtentry*,struct rt_addrinfo*) ;

__attribute__((used)) static int
rtrequest1_fib_change(struct rib_head *rnh, struct rt_addrinfo *info,
    struct rtentry **ret_nrt, u_int fibnum)
{
 struct rtentry *rt = ((void*)0);
 int error = 0;
 int free_ifa = 0;
 int family, mtu;
 struct if_mtuinfo ifmtu;

 RIB_WLOCK_ASSERT(rnh);

 rt = (struct rtentry *)rnh->rnh_lookup(info->rti_info[RTAX_DST],
     info->rti_info[RTAX_NETMASK], &rnh->head);

 if (rt == ((void*)0))
  return (ESRCH);
 RT_LOCK(rt);

 rt_setmetrics(info, rt);






 if (((rt->rt_flags & RTF_GATEWAY) &&
     info->rti_info[RTAX_GATEWAY] != ((void*)0)) ||
     info->rti_info[RTAX_IFP] != ((void*)0) ||
     (info->rti_info[RTAX_IFA] != ((void*)0) &&
      !sa_equal(info->rti_info[RTAX_IFA], rt->rt_ifa->ifa_addr))) {




  info->rti_flags |= RTF_RNH_LOCKED;
  error = rt_getifa_fib(info, fibnum);
  info->rti_flags &= ~RTF_RNH_LOCKED;
  if (info->rti_ifa != ((void*)0))
   free_ifa = 1;

  if (error != 0)
   goto bad;
 }


 if (info->rti_ifa != ((void*)0) && info->rti_ifa != rt->rt_ifa &&
     rt->rt_ifa != ((void*)0)) {
  if (rt->rt_ifa->ifa_rtrequest != ((void*)0))
   rt->rt_ifa->ifa_rtrequest(RTM_DELETE, rt, info);
  ifa_free(rt->rt_ifa);
  rt->rt_ifa = ((void*)0);
 }

 if (info->rti_info[RTAX_GATEWAY] != ((void*)0)) {
  error = rt_setgate(rt, rt_key(rt), info->rti_info[RTAX_GATEWAY]);
  if (error != 0)
   goto bad;

  rt->rt_flags &= ~RTF_GATEWAY;
  rt->rt_flags |= (RTF_GATEWAY & info->rti_flags);
 }

 if (info->rti_ifa != ((void*)0) && info->rti_ifa != rt->rt_ifa) {
  ifa_ref(info->rti_ifa);
  rt->rt_ifa = info->rti_ifa;
  rt->rt_ifp = info->rti_ifp;
 }

 rt->rt_flags &= ~RTF_FMASK;
 rt->rt_flags |= info->rti_flags & RTF_FMASK;

 if (rt->rt_ifa && rt->rt_ifa->ifa_rtrequest != ((void*)0))
        rt->rt_ifa->ifa_rtrequest(RTM_ADD, rt, info);


 if (rt->rt_ifp != ((void*)0)) {
  family = info->rti_info[RTAX_DST]->sa_family;
  mtu = if_getmtu_family(rt->rt_ifp, family);

  if (rt->rt_mtu == 0)
   rt->rt_mtu = mtu;
  if (rt->rt_mtu != mtu) {

   ifmtu.ifp = rt->rt_ifp;
   ifmtu.mtu = mtu;
   if_updatemtu_cb(rt->rt_nodes, &ifmtu);
  }
 }






 rnh->rnh_gen++;

 if (ret_nrt) {
  *ret_nrt = rt;
  RT_ADDREF(rt);
 }
bad:
 RT_UNLOCK(rt);
 if (free_ifa != 0) {
  ifa_free(info->rti_ifa);
  info->rti_ifa = ((void*)0);
 }
 return (error);
}
