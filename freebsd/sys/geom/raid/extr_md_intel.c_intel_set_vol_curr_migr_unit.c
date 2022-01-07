
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_raid_vol {int curr_migr_unit; int curr_migr_unit_hi; } ;
typedef int off_t ;



__attribute__((used)) static void
intel_set_vol_curr_migr_unit(struct intel_raid_vol *vol, off_t curr_migr_unit)
{

 vol->curr_migr_unit = curr_migr_unit & 0xffffffff;
 vol->curr_migr_unit_hi = curr_migr_unit >> 32;
}
