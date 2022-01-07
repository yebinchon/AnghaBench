
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhnd_core_info {int unit; int core_idx; int hwrev; int device; int vendor; } ;
struct bcma_erom_core {int rev; int device; int vendor; } ;



__attribute__((used)) static void
bcma_erom_to_core_info(const struct bcma_erom_core *core, u_int core_idx,
    int core_unit, struct bhnd_core_info *info)
{
 info->vendor = core->vendor;
 info->device = core->device;
 info->hwrev = core->rev;
 info->core_idx = core_idx;
 info->unit = core_unit;
}
