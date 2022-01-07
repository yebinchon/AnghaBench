
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_info {int dummy; } ;
struct rtentry {int dummy; } ;
typedef int ipfw_obj_tentry ;


 int rt_key (struct rtentry*) ;
 int rt_mask (struct rtentry*) ;
 int ta_dump_kfib_tentry_int (int ,int ,int *) ;

__attribute__((used)) static int
ta_dump_kfib_tentry(void *ta_state, struct table_info *ti, void *e,
    ipfw_obj_tentry *tent)
{
 struct rtentry *rte;

 rte = (struct rtentry *)e;

 return ta_dump_kfib_tentry_int(rt_key(rte), rt_mask(rte), tent);
}
