
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_map_entry {int dummy; } ;


 int UMA_ALIGN_PTR ;
 int UMA_ZONE_NODUMP ;
 int dmar_map_entry_zone ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static void
intel_gas_init(void)
{

 dmar_map_entry_zone = uma_zcreate("DMAR_MAP_ENTRY",
     sizeof(struct dmar_map_entry), ((void*)0), ((void*)0),
     ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_NODUMP);
}
