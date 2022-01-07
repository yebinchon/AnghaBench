
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_dl {int sdl_len; int sdl_index; int sdl_type; int sdl_family; } ;
struct sockaddr {scalar_t__ sa_len; int sa_family; } ;
struct rtentry {struct ifaddr* rt_ifa; TYPE_1__* rt_ifp; } ;
struct rt_addrinfo {int rti_flags; struct sockaddr** rti_info; struct ifaddr* rti_ifa; } ;
struct rib_head {int head; struct radix_node* (* rnh_lookup ) (struct sockaddr*,struct sockaddr*,int *) ;} ;
struct radix_node {int rn_flags; } ;
struct ifaddr {int ifa_flags; TYPE_1__* ifa_ifp; struct sockaddr* ifa_addr; struct sockaddr* ifa_netmask; struct sockaddr* ifa_dstaddr; } ;
typedef int info ;
typedef struct sockaddr_dl* caddr_t ;
struct TYPE_2__ {int if_fib; int if_index; int if_type; } ;




 int AF_LINK ;
 int EHOSTUNREACH ;
 int EINVAL ;
 int ENETUNREACH ;
 int ESRCH ;
 int IFA_RTSELF ;
 int KASSERT (int,char*) ;
 int RIB_RLOCK (struct rib_head*) ;
 int RIB_RLOCK_TRACKER ;
 int RIB_RUNLOCK (struct rib_head*) ;
 int RNF_ROOT ;
 struct rtentry* RNTORT (struct radix_node*) ;
 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 size_t RTAX_NETMASK ;
 int RTFREE_LOCKED (struct rtentry*) ;
 int RTF_HOST ;
 int RTF_PINNED ;
 int RTM_ADD ;
 int RTM_DELETE ;
 int RT_ADDREF (struct rtentry*) ;
 int RT_ALL_FIBS ;
 int RT_DEFAULT_FIB ;
 int RT_LOCK (struct rtentry*) ;
 int RT_REMREF (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 scalar_t__ V_rt_add_addr_allfibs ;
 int _SOCKADDR_TMPSIZE ;
 int bzero (struct sockaddr_dl*,int) ;
 int ifa_free (struct ifaddr*) ;
 int ifa_ref (struct ifaddr*) ;
 scalar_t__ memcmp (struct sockaddr*,struct sockaddr*,scalar_t__) ;
 int rt_maskedcopy (struct sockaddr*,struct sockaddr*,struct sockaddr*) ;
 scalar_t__ rt_mpath_capable (struct rib_head*) ;
 struct rtentry* rt_mpath_matchgate (struct rtentry*,struct sockaddr*) ;
 int rt_newaddrmsg_fib (int,struct ifaddr*,int,struct rtentry*,int) ;
 int rt_numfibs ;
 struct rib_head* rt_tables_get_rnh (int,int) ;
 int rtrequest1_fib (int,struct rt_addrinfo*,struct rtentry**,int) ;
 struct radix_node* stub1 (struct sockaddr*,struct sockaddr*,int *) ;

__attribute__((used)) static inline int
rtinit1(struct ifaddr *ifa, int cmd, int flags, int fibnum)
{
 RIB_RLOCK_TRACKER;
 struct sockaddr *dst;
 struct sockaddr *netmask;
 struct rtentry *rt = ((void*)0);
 struct rt_addrinfo info;
 int error = 0;
 int startfib, endfib;
 char tempbuf[_SOCKADDR_TMPSIZE];
 int didwork = 0;
 int a_failure = 0;
 struct sockaddr_dl *sdl = ((void*)0);
 struct rib_head *rnh;

 if (flags & RTF_HOST) {
  dst = ifa->ifa_dstaddr;
  netmask = ((void*)0);
 } else {
  dst = ifa->ifa_addr;
  netmask = ifa->ifa_netmask;
 }
 if (dst->sa_len == 0)
  return(EINVAL);
 switch (dst->sa_family) {
 case 128:
 case 129:

  break;
 default:
  fibnum = RT_DEFAULT_FIB;
  break;
 }
 if (fibnum == RT_ALL_FIBS) {
  if (V_rt_add_addr_allfibs == 0 && cmd == (int)RTM_ADD)
   startfib = endfib = ifa->ifa_ifp->if_fib;
  else {
   startfib = 0;
   endfib = rt_numfibs - 1;
  }
 } else {
  KASSERT((fibnum < rt_numfibs), ("rtinit1: bad fibnum"));
  startfib = fibnum;
  endfib = fibnum;
 }







 if (cmd == RTM_DELETE) {






  if (netmask != ((void*)0)) {
   rt_maskedcopy(dst, (struct sockaddr *)tempbuf, netmask);
   dst = (struct sockaddr *)tempbuf;
  }
 } else if (cmd == RTM_ADD) {
  sdl = (struct sockaddr_dl *)tempbuf;
  bzero(sdl, sizeof(struct sockaddr_dl));
  sdl->sdl_family = AF_LINK;
  sdl->sdl_len = sizeof(struct sockaddr_dl);
  sdl->sdl_type = ifa->ifa_ifp->if_type;
  sdl->sdl_index = ifa->ifa_ifp->if_index;
        }






 for ( fibnum = startfib; fibnum <= endfib; fibnum++) {
  if (cmd == RTM_DELETE) {
   struct radix_node *rn;




   rnh = rt_tables_get_rnh(fibnum, dst->sa_family);
   if (rnh == ((void*)0))

    continue;
   RIB_RLOCK(rnh);
   rn = rnh->rnh_lookup(dst, netmask, &rnh->head);
   error = (rn == ((void*)0) ||
       (rn->rn_flags & RNF_ROOT) ||
       RNTORT(rn)->rt_ifa != ifa);
   RIB_RUNLOCK(rnh);
   if (error) {

    continue;
   }
  }



  bzero((caddr_t)&info, sizeof(info));
  ifa_ref(ifa);
  info.rti_ifa = ifa;
  info.rti_flags = flags |
      (ifa->ifa_flags & ~IFA_RTSELF) | RTF_PINNED;
  info.rti_info[RTAX_DST] = dst;



  if (cmd == RTM_ADD)
   info.rti_info[RTAX_GATEWAY] = (struct sockaddr *)sdl;
  else
   info.rti_info[RTAX_GATEWAY] = ifa->ifa_addr;
  info.rti_info[RTAX_NETMASK] = netmask;
  error = rtrequest1_fib(cmd, &info, &rt, fibnum);

  if (error == 0 && rt != ((void*)0)) {



   RT_LOCK(rt);
   RT_ADDREF(rt);
   RT_UNLOCK(rt);
   rt_newaddrmsg_fib(cmd, ifa, error, rt, fibnum);
   RT_LOCK(rt);
   RT_REMREF(rt);
   if (cmd == RTM_DELETE) {





    RTFREE_LOCKED(rt);
   } else {
    if (cmd == RTM_ADD) {




     RT_REMREF(rt);
    }
    RT_UNLOCK(rt);
   }
   didwork = 1;
  }
  if (error)
   a_failure = error;
 }
 if (cmd == RTM_DELETE) {
  if (didwork) {
   error = 0;
  } else {

   error = ((flags & RTF_HOST) ?
       EHOSTUNREACH : ENETUNREACH);
  }
 } else {
  if (a_failure) {

   error = a_failure;
  }
 }
 return (error);
}
