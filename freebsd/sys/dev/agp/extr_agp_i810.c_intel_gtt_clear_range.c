
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int agp_intel_gtt_clear_range (int ,int ,int ) ;
 int intel_agp ;

void
intel_gtt_clear_range(u_int first_entry, u_int num_entries)
{

 agp_intel_gtt_clear_range(intel_agp, first_entry, num_entries);
}
