
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct table_info {int dummy; } ;
struct fhash_cfg {int items; int size; } ;



__attribute__((used)) static int
ta_need_modify_fhash(void *ta_state, struct table_info *ti, uint32_t count,
    uint64_t *pflags)
{
 struct fhash_cfg *cfg;

 cfg = (struct fhash_cfg *)ta_state;

 if (cfg->items > cfg->size && cfg->size < 65536) {
  *pflags = cfg->size * 2;
  return (1);
 }

 return (0);
}
