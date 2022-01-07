
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct table_info {int dummy; } ;
struct numarray_cfg {scalar_t__ size; int used; int main_ptr; } ;
struct numarray {int dummy; } ;
struct mod_item {scalar_t__ size; int main_ptr; } ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static int
ta_fill_mod_numarray(void *ta_state, struct table_info *ti, void *ta_buf,
    uint64_t *pflags)
{
 struct mod_item *mi;
 struct numarray_cfg *cfg;

 mi = (struct mod_item *)ta_buf;
 cfg = (struct numarray_cfg *)ta_state;


 if (cfg->size >= mi->size) {
  *pflags = 0;
  return (0);
 }

 memcpy(mi->main_ptr, cfg->main_ptr, cfg->used * sizeof(struct numarray));

 return (0);
}
