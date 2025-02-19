
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_offset_t ;
struct buf {scalar_t__ b_bufsize; scalar_t__ b_iocmd; int b_npages; int b_offset; scalar_t__ b_data; scalar_t__ b_kvabase; int b_pages; } ;
struct TYPE_4__ {TYPE_1__* p_vmspace; } ;
struct TYPE_3__ {int vm_map; } ;


 scalar_t__ BIO_READ ;
 int MAXPHYS ;
 int PAGE_MASK ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int btoc (int ) ;
 TYPE_2__* curproc ;
 int pmap_qenter (int,int ,int) ;
 scalar_t__ unmapped_buf ;
 int unmapped_buf_allowed ;
 int vm_fault_quick_hold_pages (int *,int,scalar_t__,int ,int ,int ) ;

int
vmapbuf(struct buf *bp, int mapbuf)
{
 vm_prot_t prot;
 int pidx;

 if (bp->b_bufsize < 0)
  return (-1);
 prot = VM_PROT_READ;
 if (bp->b_iocmd == BIO_READ)
  prot |= VM_PROT_WRITE;
 if ((pidx = vm_fault_quick_hold_pages(&curproc->p_vmspace->vm_map,
     (vm_offset_t)bp->b_data, bp->b_bufsize, prot, bp->b_pages,
     btoc(MAXPHYS))) < 0)
  return (-1);
 bp->b_npages = pidx;
 bp->b_offset = ((vm_offset_t)bp->b_data) & PAGE_MASK;
 if (mapbuf || !unmapped_buf_allowed) {
  pmap_qenter((vm_offset_t)bp->b_kvabase, bp->b_pages, pidx);
  bp->b_data = bp->b_kvabase + bp->b_offset;
 } else
  bp->b_data = unmapped_buf;
 return(0);
}
