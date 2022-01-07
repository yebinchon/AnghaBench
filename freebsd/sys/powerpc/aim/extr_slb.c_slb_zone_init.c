
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slbtnode {int dummy; } ;
struct slb {int dummy; } ;


 int UMA_ALIGN_PTR ;
 int UMA_ZONE_VM ;
 scalar_t__ VM_MAX_ADDRESS ;
 int n_slbs ;
 scalar_t__ platform_real_maxaddr () ;
 int slb_cache_zone ;
 int slb_uma_real_alloc ;
 int slbt_zone ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zone_set_allocf (int ,int ) ;

__attribute__((used)) static void
slb_zone_init(void *dummy)
{

 slbt_zone = uma_zcreate("SLB tree node", sizeof(struct slbtnode),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_VM);
 slb_cache_zone = uma_zcreate("SLB cache",
     (n_slbs + 1)*sizeof(struct slb *), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, UMA_ZONE_VM);

 if (platform_real_maxaddr() != VM_MAX_ADDRESS) {
  uma_zone_set_allocf(slb_cache_zone, slb_uma_real_alloc);
  uma_zone_set_allocf(slbt_zone, slb_uma_real_alloc);
 }
}
