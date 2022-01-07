
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rtentry {struct rtentry* rt_chain; } ;
struct TYPE_2__ {int * rti_info; void* rti_filterdata; int * rti_filter; } ;
struct rt_delinfo {TYPE_1__ info; struct rtentry* head; struct rib_head* rnh; } ;
struct rib_head {int head; int (* rnh_walktree ) (int *,int ,struct rt_delinfo*) ;} ;
typedef int rt_filter_f_t ;
typedef int di ;


 int AF_MAX ;
 int AF_UNSPEC ;
 int RIB_WLOCK (struct rib_head*) ;
 int RIB_WUNLOCK (struct rib_head*) ;
 size_t RTAX_DST ;
 size_t RTAX_NETMASK ;
 int RTFREE_LOCKED (struct rtentry*) ;
 int bzero (struct rt_delinfo*,int) ;
 int rt_checkdelroute ;
 int rt_key (struct rtentry*) ;
 int rt_mask (struct rtentry*) ;
 int rt_notifydelete (struct rtentry*,TYPE_1__*) ;
 scalar_t__ rt_numfibs ;
 struct rib_head* rt_tables_get_rnh (scalar_t__,int) ;
 int stub1 (int *,int ,struct rt_delinfo*) ;

void
rt_foreach_fib_walk_del(int af, rt_filter_f_t *filter_f, void *arg)
{
 struct rib_head *rnh;
 struct rt_delinfo di;
 struct rtentry *rt;
 uint32_t fibnum;
 int i, start, end;

 bzero(&di, sizeof(di));
 di.info.rti_filter = filter_f;
 di.info.rti_filterdata = arg;

 for (fibnum = 0; fibnum < rt_numfibs; fibnum++) {

  if (af != AF_UNSPEC) {
   start = af;
   end = af;
  } else {
   start = 1;
   end = AF_MAX;
  }

  for (i = start; i <= end; i++) {
   rnh = rt_tables_get_rnh(fibnum, i);
   if (rnh == ((void*)0))
    continue;
   di.rnh = rnh;

   RIB_WLOCK(rnh);
   rnh->rnh_walktree(&rnh->head, rt_checkdelroute, &di);
   RIB_WUNLOCK(rnh);

   if (di.head == ((void*)0))
    continue;


   while (di.head != ((void*)0)) {
    rt = di.head;
    di.head = rt->rt_chain;
    rt->rt_chain = ((void*)0);


    di.info.rti_info[RTAX_DST] = rt_key(rt);
    di.info.rti_info[RTAX_NETMASK] = rt_mask(rt);

    rt_notifydelete(rt, &di.info);
    RTFREE_LOCKED(rt);
   }

  }
 }
}
