
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int u_int ;


 int agp_intel_gtt_install_pte (int ,int ,int ,int ) ;
 int intel_agp ;

void
intel_gtt_install_pte(u_int index, vm_paddr_t addr, u_int flags)
{

 agp_intel_gtt_install_pte(intel_agp, index, addr, flags);
}
