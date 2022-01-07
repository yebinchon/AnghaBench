
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct table_info {int dummy; } ;
struct iftable_cfg {int size; int count; } ;



__attribute__((used)) static int
ta_need_modify_ifidx(void *ta_state, struct table_info *ti, uint32_t count,
    uint64_t *pflags)
{
 struct iftable_cfg *cfg;
 uint32_t size;

 cfg = (struct iftable_cfg *)ta_state;

 size = cfg->size;
 while (size < cfg->count + count)
  size *= 2;

 if (size != cfg->size) {
  *pflags = size;
  return (1);
 }

 return (0);
}
