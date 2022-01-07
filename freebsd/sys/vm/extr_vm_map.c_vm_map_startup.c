
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int dummy; } ;
struct vm_map_entry {int dummy; } ;
struct vm_map {int dummy; } ;


 int MAX_KMAP ;
 int MTX_DEF ;
 int UMA_ALIGN_PTR ;
 int UMA_ZONE_MTXCLASS ;
 int UMA_ZONE_NOFREE ;
 int UMA_ZONE_VM ;
 void* kmapentzone ;
 int map_sleep_mtx ;
 void* mapentzone ;
 void* mapzone ;
 int mtx_init (int *,char*,int *,int ) ;
 int uma_prealloc (void*,int ) ;
 void* uma_zcreate (char*,int,int *,int ,int *,int ,int *,int,...) ;
 int vm_map_zdtor ;
 int vm_map_zinit ;
 int vmspace_zdtor ;
 int vmspace_zinit ;
 void* vmspace_zone ;

void
vm_map_startup(void)
{
 mtx_init(&map_sleep_mtx, "vm map sleep mutex", ((void*)0), MTX_DEF);
 mapzone = uma_zcreate("MAP", sizeof(struct vm_map), ((void*)0),



     ((void*)0),

     vm_map_zinit, ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
 uma_prealloc(mapzone, MAX_KMAP);
 kmapentzone = uma_zcreate("KMAP ENTRY", sizeof(struct vm_map_entry),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR,
     UMA_ZONE_MTXCLASS | UMA_ZONE_VM);
 mapentzone = uma_zcreate("MAP ENTRY", sizeof(struct vm_map_entry),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
 vmspace_zone = uma_zcreate("VMSPACE", sizeof(struct vmspace), ((void*)0),



     ((void*)0),

     vmspace_zinit, ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
}
