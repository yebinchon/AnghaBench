
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int * pmap_segmap (int ,int ) ;

__attribute__((used)) static __inline
pd_entry_t *pmap_pde(pmap_t pmap, vm_offset_t va)
{

 return (pmap_segmap(pmap, va));
}
