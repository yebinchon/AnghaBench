
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct md_page {int dummy; } ;
typedef int * pv_entry_t ;
typedef int pmap_t ;


 int KASSERT (int ,char*) ;
 int free_pv_entry (int ,int *) ;
 int * pmap_pvh_remove (struct md_page*,int ,int ) ;

__attribute__((used)) static void
pmap_pvh_free(struct md_page *pvh, pmap_t pmap, vm_offset_t va)
{
 pv_entry_t pv;

 pv = pmap_pvh_remove(pvh, pmap, va);

 KASSERT(pv != ((void*)0), ("pmap_pvh_free: pv not found for %#lx", va));
 free_pv_entry(pmap, pv);
}
