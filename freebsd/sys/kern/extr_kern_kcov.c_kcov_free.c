
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
struct kcov_info {scalar_t__ kvaddr; size_t bufsize; int * bufobj; } ;


 int M_KCOV_INFO ;
 size_t PAGE_SIZE ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 int free (struct kcov_info*,int ) ;
 int kva_free (scalar_t__,size_t) ;
 int pmap_qremove (scalar_t__,size_t) ;
 int vm_object_deallocate (int *) ;
 int vm_page_lookup (int *,int ) ;
 int vm_page_next (int ) ;
 int vm_page_unwire_noq (int ) ;

__attribute__((used)) static void
kcov_free(struct kcov_info *info)
{
 vm_page_t m;
 size_t i;

 if (info->kvaddr != 0) {
  pmap_qremove(info->kvaddr, info->bufsize / PAGE_SIZE);
  kva_free(info->kvaddr, info->bufsize);
 }
 if (info->bufobj != ((void*)0)) {
  VM_OBJECT_WLOCK(info->bufobj);
  m = vm_page_lookup(info->bufobj, 0);
  for (i = 0; i < info->bufsize / PAGE_SIZE; i++) {
   vm_page_unwire_noq(m);
   m = vm_page_next(m);
  }
  VM_OBJECT_WUNLOCK(info->bufobj);
  vm_object_deallocate(info->bufobj);
 }
 free(info, M_KCOV_INFO);
}
