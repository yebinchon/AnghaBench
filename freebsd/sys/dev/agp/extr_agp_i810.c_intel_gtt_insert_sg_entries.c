
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sglist {int dummy; } ;


 int agp_intel_gtt_insert_sg_entries (int ,struct sglist*,int ,int ) ;
 int intel_agp ;

void
intel_gtt_insert_sg_entries(struct sglist *sg_list, u_int first_entry,
    u_int flags)
{

 agp_intel_gtt_insert_sg_entries(intel_agp, sg_list, first_entry, flags);
}
