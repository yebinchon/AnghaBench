
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int ;
struct sockaddr {int sa_family; } ;
struct rtentry {int dummy; } ;
struct rt_addrinfo {struct sockaddr** rti_info; } ;
struct rib_head {int head; struct radix_node* (* rnh_matchaddr ) (struct sockaddr*,int *) ;} ;
struct radix_node {int rn_flags; } ;
typedef int info ;
struct TYPE_2__ {int rts_unreach; } ;


 int KASSERT (int,char*) ;
 int RIB_LOCK_ASSERT (struct rib_head*) ;
 int RIB_RLOCK (struct rib_head*) ;
 int RIB_RLOCK_TRACKER ;
 int RIB_RUNLOCK (struct rib_head*) ;
 int RNF_ROOT ;
 struct rtentry* RNTORT (struct radix_node*) ;
 size_t RTAX_DST ;
 int RTF_RNH_LOCKED ;
 int RTM_MISS ;
 int RT_ADDREF (struct rtentry*) ;
 int RT_LOCK (struct rtentry*) ;
 TYPE_1__ V_rtstat ;
 int bzero (struct rt_addrinfo*,int) ;
 int rt_missmsg_fib (int,struct rt_addrinfo*,int ,int,int ) ;
 int rt_numfibs ;
 struct rib_head* rt_tables_get_rnh (int ,int ) ;
 struct radix_node* stub1 (struct sockaddr*,int *) ;

struct rtentry *
rtalloc1_fib(struct sockaddr *dst, int report, u_long ignflags,
      u_int fibnum)
{
 RIB_RLOCK_TRACKER;
 struct rib_head *rh;
 struct radix_node *rn;
 struct rtentry *newrt;
 struct rt_addrinfo info;
 int err = 0, msgtype = RTM_MISS;

 KASSERT((fibnum < rt_numfibs), ("rtalloc1_fib: bad fibnum"));
 rh = rt_tables_get_rnh(fibnum, dst->sa_family);
 newrt = ((void*)0);
 if (rh == ((void*)0))
  goto miss;




 if ((ignflags & RTF_RNH_LOCKED) == 0)
  RIB_RLOCK(rh);




 rn = rh->rnh_matchaddr(dst, &rh->head);
 if (rn && ((rn->rn_flags & RNF_ROOT) == 0)) {
  newrt = RNTORT(rn);
  RT_LOCK(newrt);
  RT_ADDREF(newrt);
  if ((ignflags & RTF_RNH_LOCKED) == 0)
   RIB_RUNLOCK(rh);
  return (newrt);

 } else if ((ignflags & RTF_RNH_LOCKED) == 0)
  RIB_RUNLOCK(rh);




miss:
 V_rtstat.rts_unreach++;

 if (report) {





  bzero(&info, sizeof(info));
  info.rti_info[RTAX_DST] = dst;
  rt_missmsg_fib(msgtype, &info, 0, err, fibnum);
 }
 return (newrt);
}
