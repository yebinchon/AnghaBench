
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
typedef int uint32_t ;
typedef void* uint16_t ;
struct vmctx {int dummy; } ;
struct vm_guest_paging {int cpl; int cpu_mode; } ;
struct seg_desc {int access; int limit; int base; } ;
struct iovec {int dummy; } ;


 void* GETREG (struct vmctx*,int,int ) ;
 int IDT_SS ;
 int PROT_WRITE ;
 int SDT_SYS386BSY ;
 int SDT_SYS386TSS ;
 scalar_t__ SEG_DESC_DEF32 (int ) ;
 int SETREG (struct vmctx*,int,int ,int) ;
 int VM_REG_GUEST_CR0 ;
 int VM_REG_GUEST_RFLAGS ;
 int VM_REG_GUEST_RSP ;
 int VM_REG_GUEST_SS ;
 int assert (int) ;
 int nitems (struct iovec*) ;
 int sel_exception (struct vmctx*,int,int ,void*,int) ;
 scalar_t__ vie_alignment_check (int ,int,void*,void*,void*) ;
 scalar_t__ vie_calculate_gla (int ,int ,struct seg_desc*,int,int,int,int ,void**) ;
 int vm_copy_setup (struct vmctx*,int,struct vm_guest_paging*,void*,int,int ,struct iovec*,int ,int*) ;
 int vm_copyout (struct vmctx*,int,int*,struct iovec*,int) ;
 int vm_get_desc (struct vmctx*,int,int ,int *,int *,int *) ;
 int vm_inject_ac (struct vmctx*,int,int) ;

__attribute__((used)) static int
push_errcode(struct vmctx *ctx, int vcpu, struct vm_guest_paging *paging,
    int task_type, uint32_t errcode, int *faultptr)
{
 struct iovec iov[2];
 struct seg_desc seg_desc;
 int stacksize, bytes, error;
 uint64_t gla, cr0, rflags;
 uint32_t esp;
 uint16_t stacksel;

 *faultptr = 0;

 cr0 = GETREG(ctx, vcpu, VM_REG_GUEST_CR0);
 rflags = GETREG(ctx, vcpu, VM_REG_GUEST_RFLAGS);
 stacksel = GETREG(ctx, vcpu, VM_REG_GUEST_SS);

 error = vm_get_desc(ctx, vcpu, VM_REG_GUEST_SS, &seg_desc.base,
     &seg_desc.limit, &seg_desc.access);
 assert(error == 0);






 if (task_type == SDT_SYS386BSY || task_type == SDT_SYS386TSS)
  bytes = 4;
 else
  bytes = 2;






 if (SEG_DESC_DEF32(seg_desc.access))
  stacksize = 4;
 else
  stacksize = 2;

 esp = GETREG(ctx, vcpu, VM_REG_GUEST_RSP);
 esp -= bytes;

 if (vie_calculate_gla(paging->cpu_mode, VM_REG_GUEST_SS,
     &seg_desc, esp, bytes, stacksize, PROT_WRITE, &gla)) {
  sel_exception(ctx, vcpu, IDT_SS, stacksel, 1);
  *faultptr = 1;
  return (0);
 }

 if (vie_alignment_check(paging->cpl, bytes, cr0, rflags, gla)) {
  vm_inject_ac(ctx, vcpu, 1);
  *faultptr = 1;
  return (0);
 }

 error = vm_copy_setup(ctx, vcpu, paging, gla, bytes, PROT_WRITE,
     iov, nitems(iov), faultptr);
 if (error || *faultptr)
  return (error);

 vm_copyout(ctx, vcpu, &errcode, iov, bytes);
 SETREG(ctx, vcpu, VM_REG_GUEST_RSP, esp);
 return (0);
}
