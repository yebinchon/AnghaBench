
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct table_info {void* state; } ;
struct mod_item {void* main_ptr; int size; } ;
struct iftable_cfg {void* main_ptr; int size; } ;



__attribute__((used)) static void
ta_modify_ifidx(void *ta_state, struct table_info *ti, void *ta_buf,
    uint64_t pflags)
{
 struct mod_item *mi;
 struct iftable_cfg *icfg;
 void *old_ptr;

 mi = (struct mod_item *)ta_buf;
 icfg = (struct iftable_cfg *)ta_state;

 old_ptr = icfg->main_ptr;
 icfg->main_ptr = mi->main_ptr;
 icfg->size = mi->size;
 ti->state = icfg->main_ptr;

 mi->main_ptr = old_ptr;
}
