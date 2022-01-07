
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef size_t uint32_t ;
struct table_info {int dummy; } ;
struct numarray_cfg {size_t size; size_t used; } ;



__attribute__((used)) static int
ta_need_modify_numarray(void *ta_state, struct table_info *ti, uint32_t count,
    uint64_t *pflags)
{
 struct numarray_cfg *cfg;
 size_t size;

 cfg = (struct numarray_cfg *)ta_state;

 size = cfg->size;
 while (size < cfg->used + count)
  size *= 2;

 if (size != cfg->size) {
  *pflags = size;
  return (1);
 }

 return (0);
}
