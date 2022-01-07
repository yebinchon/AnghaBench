
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int vm_map_t ;
typedef int pmap_t ;


 int CTR1 (int ,char*,int ) ;
 int KTR_VM ;
 int M_WAITOK ;
 int _vm_map_init (int ,int ,int ,int ) ;
 int mapzone ;
 int uma_zalloc (int ,int ) ;

vm_map_t
vm_map_create(pmap_t pmap, vm_offset_t min, vm_offset_t max)
{
 vm_map_t result;

 result = uma_zalloc(mapzone, M_WAITOK);
 CTR1(KTR_VM, "vm_map_create: %p", result);
 _vm_map_init(result, pmap, min, max);
 return (result);
}
