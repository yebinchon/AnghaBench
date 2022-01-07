
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmem_btag {int dummy; } ;
struct vmem {int dummy; } ;


 int BT_MAXALLOC ;
 int MTX_DEF ;
 int UMA_ALIGN_PTR ;
 int UMA_ZONE_NOFREE ;
 int UMA_ZONE_VM ;
 int mp_ncpus ;
 int mtx_init (int *,char*,int *,int ) ;
 int uma_prealloc (void*,int) ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int) ;
 int uma_zone_reserve (void*,int) ;
 int uma_zone_set_allocf (void*,int ) ;
 int vmem_bt_alloc ;
 int vmem_bt_lock ;
 void* vmem_bt_zone ;
 int vmem_list_lock ;
 void* vmem_zone ;

void
vmem_startup(void)
{

 mtx_init(&vmem_list_lock, "vmem list lock", ((void*)0), MTX_DEF);
 vmem_zone = uma_zcreate("vmem",
     sizeof(struct vmem), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, UMA_ZONE_VM);
 vmem_bt_zone = uma_zcreate("vmem btag",
     sizeof(struct vmem_btag), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, UMA_ZONE_VM | UMA_ZONE_NOFREE);

 mtx_init(&vmem_bt_lock, "btag lock", ((void*)0), MTX_DEF);
 uma_prealloc(vmem_bt_zone, BT_MAXALLOC);







 uma_zone_reserve(vmem_bt_zone, 2 * BT_MAXALLOC * mp_ncpus);
 uma_zone_set_allocf(vmem_bt_zone, vmem_bt_alloc);

}
