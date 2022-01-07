
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_page {int dummy; } ;


 int UMA_ALIGN_PTR ;
 int UMA_ZONE_NOFREE ;
 int UMA_ZONE_VM ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 int bogus_page ;
 int fakepg_zone ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int) ;
 int vm_page_alloc (int *,int ,int) ;

__attribute__((used)) static void
vm_page_init(void *dummy)
{

 fakepg_zone = uma_zcreate("fakepg", sizeof(struct vm_page), ((void*)0), ((void*)0),
     ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_NOFREE | UMA_ZONE_VM);
 bogus_page = vm_page_alloc(((void*)0), 0, VM_ALLOC_NOOBJ |
     VM_ALLOC_NORMAL | VM_ALLOC_WIRED);
}
