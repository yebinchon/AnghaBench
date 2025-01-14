
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int uint32_t ;
struct TYPE_3__ {int mas1; int mas2; int mas3; scalar_t__ mas7; } ;
typedef TYPE_1__ tlb_entry_t ;


 int EINVAL ;
 int EPERM ;
 int ERANGE ;
 int KASSERT (unsigned int,char*) ;
 unsigned int MAS1_TSIZE_MASK ;
 unsigned int MAS1_TSIZE_SHIFT ;
 int MAS1_VALID ;
 int MAS2_EPN_MASK ;
 int MAS2_G ;
 int MAS2_I ;
 int MAS3_RPN ;
 int MAS3_SR ;
 int MAS3_SW ;
 int MAS7_RPN ;
 int tlb1_read_entry (TYPE_1__*,int) ;
 int tsize2size (unsigned int) ;

__attribute__((used)) static int
tlb1_iomapped(int i, vm_paddr_t pa, vm_size_t size, vm_offset_t *va)
{
 uint32_t prot;
 vm_paddr_t pa_start;
 vm_paddr_t pa_end;
 unsigned int entry_tsize;
 vm_size_t entry_size;
 tlb_entry_t e;

 *va = (vm_offset_t)((void*)0);

 tlb1_read_entry(&e, i);

 if (!(e.mas1 & MAS1_VALID))
  return (EINVAL);





 prot = e.mas2 & (MAS2_I | MAS2_G);
 if (prot != (MAS2_I | MAS2_G))
  return (EPERM);

 prot = e.mas3 & (MAS3_SR | MAS3_SW);
 if (prot != (MAS3_SR | MAS3_SW))
  return (EPERM);


 entry_tsize = (e.mas1 & MAS1_TSIZE_MASK) >> MAS1_TSIZE_SHIFT;
 KASSERT((entry_tsize), ("tlb1_iomapped: invalid entry tsize"));

 entry_size = tsize2size(entry_tsize);
 pa_start = (((vm_paddr_t)e.mas7 & MAS7_RPN) << 32) |
     (e.mas3 & MAS3_RPN);
 pa_end = pa_start + entry_size;

 if ((pa < pa_start) || ((pa + size) > pa_end))
  return (ERANGE);


 *va = (e.mas2 & MAS2_EPN_MASK) + (pa - pa_start);
 return (0);
}
