
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct table_info {int dummy; } ;
struct chash_cfg {int items4; int size4; int items6; int size6; } ;



__attribute__((used)) static int
ta_need_modify_chash(void *ta_state, struct table_info *ti, uint32_t count,
    uint64_t *pflags)
{
 struct chash_cfg *cfg;
 uint64_t data;







 cfg = (struct chash_cfg *)ta_state;

 data = 0;
 if (cfg->items4 > cfg->size4 && cfg->size4 < 65536)
  data |= (cfg->size4 * 2) << 16;
 if (cfg->items6 > cfg->size6 && cfg->size6 < 65536)
  data |= cfg->size6 * 2;

 if (data != 0) {
  *pflags = data;
  return (1);
 }

 return (0);
}
