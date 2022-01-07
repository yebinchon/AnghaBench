
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct rtentry {int rt_flags; int * rt_ifp; } ;
struct route {struct rtentry* ro_rt; int ro_dst; } ;


 int RTFREE (struct rtentry*) ;
 int RTF_UP ;
 int RT_UNLOCK (struct rtentry*) ;
 struct rtentry* rtalloc1_fib (int *,int,int ,int ) ;

void
rtalloc_ign_fib(struct route *ro, u_long ignore, u_int fibnum)
{
 struct rtentry *rt;

 if ((rt = ro->ro_rt) != ((void*)0)) {
  if (rt->rt_ifp != ((void*)0) && rt->rt_flags & RTF_UP)
   return;
  RTFREE(rt);
  ro->ro_rt = ((void*)0);
 }
 ro->ro_rt = rtalloc1_fib(&ro->ro_dst, 1, ignore, fibnum);
 if (ro->ro_rt)
  RT_UNLOCK(ro->ro_rt);
}
