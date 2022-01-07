
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ pmap_t ;


 int invlpg (int ) ;
 scalar_t__ kernel_pmap ;

__attribute__((used)) static void
pmap_invalidate_page_int(pmap_t pmap, vm_offset_t va)
{

 if (pmap == kernel_pmap)
  invlpg(va);
}
