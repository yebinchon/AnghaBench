
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ta_foreach_f ;
struct wa_ifidx {void* arg; int * f; } ;
struct table_info {int dummy; } ;
struct iftable_cfg {int ii; } ;


 int foreach_ifidx ;
 int ipfw_objhash_foreach (int ,int ,struct wa_ifidx*) ;

__attribute__((used)) static void
ta_foreach_ifidx(void *ta_state, struct table_info *ti, ta_foreach_f *f,
    void *arg)
{
 struct iftable_cfg *icfg;
 struct wa_ifidx wa;

 icfg = (struct iftable_cfg *)ta_state;

 wa.f = f;
 wa.arg = arg;

 ipfw_objhash_foreach(icfg->ii, foreach_ifidx, &wa);
}
