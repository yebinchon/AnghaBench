
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_family; int sa_len; } ;
struct rtentry {int rt_flags; int rt_weight; struct ifaddr* rt_ifa; int rt_nodes; int rt_ifp; scalar_t__ rt_fibnum; } ;
struct rt_addrinfo {int rti_flags; struct sockaddr** rti_info; struct ifaddr* rti_ifa; } ;
struct rib_head {int rnh_gen; int head; struct radix_node* (* rnh_addaddr ) (struct sockaddr*,int *,int *,int ) ;} ;
struct radix_node {int dummy; } ;
struct ifaddr {int (* ifa_rtrequest ) (int,struct rtentry*,struct rt_addrinfo*) ;int ifa_ifp; } ;
typedef int mdst ;
struct TYPE_3__ {int sa_family; } ;




 int AF_LINK ;
 int AF_UNSPEC ;
 int EAFNOSUPPORT ;
 int EEXIST ;
 int EINVAL ;
 int ENOBUFS ;
 int EOPNOTSUPP ;
 int KASSERT (int,char*) ;
 int M_NOWAIT ;
 int RIB_WLOCK (struct rib_head*) ;
 int RIB_WUNLOCK (struct rib_head*) ;
 size_t RTAX_DST ;
 int RTFREE (struct rtentry*) ;
 int RTFREE_LOCKED (struct rtentry*) ;
 int RTF_GATEWAY ;
 int RTF_HOST ;
 int RTF_PINNED ;
 int RTF_RNH_LOCKED ;
 int RTF_UP ;




 int RT_ADDREF (struct rtentry*) ;
 scalar_t__ RT_DEFAULT_FIB ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int R_Free (scalar_t__) ;
 int V_rtzone ;
 int bcopy (struct sockaddr*,struct sockaddr*,int) ;
 struct sockaddr* dst ;
 int flags ;
 TYPE_1__* gateway ;
 int ifa_free (struct ifaddr*) ;
 int ifa_ref (struct ifaddr*) ;
 int * netmask ;
 int rt_getifa_fib (struct rt_addrinfo*,scalar_t__) ;
 scalar_t__ rt_key (struct rtentry*) ;
 int rt_maskedcopy (struct sockaddr*,struct sockaddr*,int *) ;
 int rt_mpath_capable (struct rib_head*) ;
 int rt_mpath_conflict (struct rib_head*,struct rtentry*,int *) ;
 int rt_notifydelete (struct rtentry*,struct rt_addrinfo*) ;
 scalar_t__ rt_numfibs ;
 int rt_setgate (struct rtentry*,struct sockaddr*,TYPE_1__*) ;
 int rt_setmetrics (struct rt_addrinfo*,struct rtentry*) ;
 struct rib_head* rt_tables_get_rnh (scalar_t__,int) ;
 struct rtentry* rt_unlinkrte (struct rib_head*,struct rt_addrinfo*,int*) ;
 int rtrequest1_fib_change (struct rib_head*,struct rt_addrinfo*,struct rtentry**,scalar_t__) ;
 struct radix_node* stub1 (struct sockaddr*,int *,int *,int ) ;
 struct radix_node* stub2 (struct sockaddr*,int *,int *,int ) ;
 int stub3 (int,struct rtentry*,struct rt_addrinfo*) ;
 struct rtentry* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct rtentry*) ;

int
rtrequest1_fib(int req, struct rt_addrinfo *info, struct rtentry **ret_nrt,
    u_int fibnum)
{
 int error = 0;
 struct rtentry *rt, *rt_old;
 struct radix_node *rn;
 struct rib_head *rnh;
 struct ifaddr *ifa;
 struct sockaddr *ndst;
 struct sockaddr_storage mdst;

 KASSERT((fibnum < rt_numfibs), ("rtrequest1_fib: bad fibnum"));
 KASSERT((flags & RTF_RNH_LOCKED) == 0, ("rtrequest1_fib: locked"));
 switch (dst->sa_family) {
 case 132:
 case 133:

  break;
 default:
  fibnum = RT_DEFAULT_FIB;
  break;
 }




 rnh = rt_tables_get_rnh(fibnum, dst->sa_family);
 if (rnh == ((void*)0))
  return (EAFNOSUPPORT);





 if (flags & RTF_HOST)
  netmask = ((void*)0);

 switch (req) {
 case 129:
  if (netmask) {
   if (dst->sa_len > sizeof(mdst))
    return (EINVAL);
   rt_maskedcopy(dst, (struct sockaddr *)&mdst, netmask);
   dst = (struct sockaddr *)&mdst;
  }

  RIB_WLOCK(rnh);
  rt = rt_unlinkrte(rnh, info, &error);
  RIB_WUNLOCK(rnh);
  if (error != 0)
   return (error);

  rt_notifydelete(rt, info);






  if (ret_nrt) {
   *ret_nrt = rt;
   RT_UNLOCK(rt);
  } else
   RTFREE_LOCKED(rt);
  break;
 case 128:




  break;
 case 131:
  if ((flags & RTF_GATEWAY) && !gateway)
   return (EINVAL);
  if (dst && gateway && (dst->sa_family != gateway->sa_family) &&
      (gateway->sa_family != AF_UNSPEC) && (gateway->sa_family != AF_LINK))
   return (EINVAL);

  if (info->rti_ifa == ((void*)0)) {
   error = rt_getifa_fib(info, fibnum);
   if (error)
    return (error);
  }
  rt = uma_zalloc(V_rtzone, M_NOWAIT);
  if (rt == ((void*)0)) {
   return (ENOBUFS);
  }
  rt->rt_flags = RTF_UP | flags;
  rt->rt_fibnum = fibnum;



  if ((error = rt_setgate(rt, dst, gateway)) != 0) {
   uma_zfree(V_rtzone, rt);
   return (error);
  }




  ndst = (struct sockaddr *)rt_key(rt);




  if (netmask) {
   rt_maskedcopy(dst, ndst, netmask);
  } else
   bcopy(dst, ndst, dst->sa_len);






  ifa = info->rti_ifa;
  ifa_ref(ifa);
  rt->rt_ifa = ifa;
  rt->rt_ifp = ifa->ifa_ifp;
  rt->rt_weight = 1;

  rt_setmetrics(info, rt);

  RIB_WLOCK(rnh);
  RT_LOCK(rt);
  rn = rnh->rnh_addaddr(ndst, netmask, &rnh->head, rt->rt_nodes);

  rt_old = ((void*)0);
  if (rn == ((void*)0) && (info->rti_flags & RTF_PINNED) != 0) {





   struct sockaddr *info_dst = info->rti_info[RTAX_DST];
   info->rti_info[RTAX_DST] = ndst;

   info->rti_flags &= ~RTF_PINNED;
   rt_old = rt_unlinkrte(rnh, info, &error);
   info->rti_flags |= RTF_PINNED;
   info->rti_info[RTAX_DST] = info_dst;
   if (rt_old != ((void*)0))
    rn = rnh->rnh_addaddr(ndst, netmask, &rnh->head,
        rt->rt_nodes);
  }
  RIB_WUNLOCK(rnh);

  if (rt_old != ((void*)0))
   RT_UNLOCK(rt_old);





  if (rn == ((void*)0)) {
   ifa_free(rt->rt_ifa);
   R_Free(rt_key(rt));
   uma_zfree(V_rtzone, rt);
   return (EEXIST);
  }

  if (rt_old != ((void*)0)) {
   rt_notifydelete(rt_old, info);
   RTFREE(rt_old);
  }





  if (ifa->ifa_rtrequest)
   ifa->ifa_rtrequest(req, rt, info);





  if (ret_nrt) {
   *ret_nrt = rt;
   RT_ADDREF(rt);
  }
  rnh->rnh_gen++;
  RT_UNLOCK(rt);
  break;
 case 130:
  RIB_WLOCK(rnh);
  error = rtrequest1_fib_change(rnh, info, ret_nrt, fibnum);
  RIB_WUNLOCK(rnh);
  break;
 default:
  error = EOPNOTSUPP;
 }

 return (error);
}
