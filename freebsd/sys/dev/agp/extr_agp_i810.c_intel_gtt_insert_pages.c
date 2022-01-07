
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int u_int ;


 int agp_intel_gtt_insert_pages (int ,int ,int ,int *,int ) ;
 int intel_agp ;

void
intel_gtt_insert_pages(u_int first_entry, u_int num_entries, vm_page_t *pages,
    u_int flags)
{

 agp_intel_gtt_insert_pages(intel_agp, first_entry, num_entries,
     pages, flags);
}
