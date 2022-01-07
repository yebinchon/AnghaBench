
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_page_prot; } ;
struct ib_ucontext {int dummy; } ;
struct TYPE_3__ {int pfn; } ;
struct TYPE_4__ {TYPE_1__ uar; } ;


 int EAGAIN ;
 int EINVAL ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ io_remap_pfn_range (struct vm_area_struct*,scalar_t__,int ,scalar_t__,int ) ;
 int pgprot_noncached (int ) ;
 TYPE_2__* to_mucontext (struct ib_ucontext*) ;

__attribute__((used)) static int mthca_mmap_uar(struct ib_ucontext *context,
     struct vm_area_struct *vma)
{
 if (vma->vm_end - vma->vm_start != PAGE_SIZE)
  return -EINVAL;

 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);

 if (io_remap_pfn_range(vma, vma->vm_start,
          to_mucontext(context)->uar.pfn,
          PAGE_SIZE, vma->vm_page_prot))
  return -EAGAIN;

 return 0;
}
