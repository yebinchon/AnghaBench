
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct table_info {int dummy; } ;
struct mod_item {scalar_t__ size; int main_ptr; } ;
struct iftable_cfg {scalar_t__ size; int used; int main_ptr; } ;
struct ifidx {int dummy; } ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static int
ta_fill_mod_ifidx(void *ta_state, struct table_info *ti, void *ta_buf,
    uint64_t *pflags)
{
 struct mod_item *mi;
 struct iftable_cfg *icfg;

 mi = (struct mod_item *)ta_buf;
 icfg = (struct iftable_cfg *)ta_state;


 if (icfg->size >= mi->size) {
  *pflags = 0;
  return (0);
 }

 memcpy(mi->main_ptr, icfg->main_ptr, icfg->used * sizeof(struct ifidx));

 return (0);
}
