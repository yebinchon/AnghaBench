
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int PAGE_SHIFT ;
 scalar_t__ VM_NFREEORDER ;
 int VM_PAGE_TO_PHYS (int ) ;
 scalar_t__ ffsl (int) ;
 int min (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
max_order(vm_page_t m)
{
 return (min(ffsl(VM_PAGE_TO_PHYS(m) >> PAGE_SHIFT) - 1,
     VM_NFREEORDER - 1));
}
