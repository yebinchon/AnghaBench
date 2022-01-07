
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_raid_vol {scalar_t__ curr_migr_unit; scalar_t__ curr_migr_unit_hi; } ;
typedef int off_t ;



__attribute__((used)) static off_t
intel_get_vol_curr_migr_unit(struct intel_raid_vol *vol)
{
 off_t curr_migr_unit = (off_t)vol->curr_migr_unit_hi << 32;

 curr_migr_unit += vol->curr_migr_unit;
 return (curr_migr_unit);
}
