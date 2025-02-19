
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vm_guest_paging {int dummy; } ;


 int PROT_READ ;
 int ctx ;
 int guest_paging_info (int,struct vm_guest_paging*) ;
 int vm_gla2gpa_nofault (int ,int,struct vm_guest_paging*,int ,int ,int *,int*) ;

__attribute__((used)) static int
guest_vaddr2paddr(int vcpu, uint64_t vaddr, uint64_t *paddr)
{
 struct vm_guest_paging paging;
 int fault;

 if (guest_paging_info(vcpu, &paging) == -1)
  return (-1);





 if (vm_gla2gpa_nofault(ctx, vcpu, &paging, vaddr, PROT_READ, paddr,
     &fault) == -1)
  return (-1);
 if (fault)
  return (0);
 return (1);
}
