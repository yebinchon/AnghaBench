
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct table_info {void* state; } ;
struct numarray_cfg {void* main_ptr; int size; } ;
struct mod_item {void* main_ptr; int size; } ;



__attribute__((used)) static void
ta_modify_numarray(void *ta_state, struct table_info *ti, void *ta_buf,
    uint64_t pflags)
{
 struct mod_item *mi;
 struct numarray_cfg *cfg;
 void *old_ptr;

 mi = (struct mod_item *)ta_buf;
 cfg = (struct numarray_cfg *)ta_state;

 old_ptr = cfg->main_ptr;
 cfg->main_ptr = mi->main_ptr;
 cfg->size = mi->size;
 ti->state = cfg->main_ptr;

 mi->main_ptr = old_ptr;
}
