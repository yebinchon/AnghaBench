
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_info {int dummy; } ;
struct iftable_cfg {struct table_info* ti; } ;



__attribute__((used)) static void
ta_change_ti_ifidx(void *ta_state, struct table_info *ti)
{
 struct iftable_cfg *icfg;

 icfg = (struct iftable_cfg *)ta_state;
 icfg->ti = ti;
}
