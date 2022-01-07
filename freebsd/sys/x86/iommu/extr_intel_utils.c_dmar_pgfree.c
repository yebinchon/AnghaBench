
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int * vm_page_t ;
typedef int vm_object_t ;


 int DMAR_PGF_OBJL ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int atomic_subtract_int (int *,int) ;
 int dmar_tbl_pagecnt ;
 int vm_page_free (int *) ;
 int * vm_page_lookup (int ,int ) ;

void
dmar_pgfree(vm_object_t obj, vm_pindex_t idx, int flags)
{
 vm_page_t m;

 if ((flags & DMAR_PGF_OBJL) == 0)
  VM_OBJECT_WLOCK(obj);
 m = vm_page_lookup(obj, idx);
 if (m != ((void*)0)) {
  vm_page_free(m);
  atomic_subtract_int(&dmar_tbl_pagecnt, 1);
 }
 if ((flags & DMAR_PGF_OBJL) == 0)
  VM_OBJECT_WUNLOCK(obj);
}
