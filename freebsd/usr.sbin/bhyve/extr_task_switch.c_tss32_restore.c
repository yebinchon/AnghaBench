
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct vmctx {int dummy; } ;
struct TYPE_2__ {scalar_t__ paging_mode; int cr3; int cpl; } ;
struct vm_task_switch {scalar_t__ reason; TYPE_1__ paging; } ;
struct tss32 {int tss_eflags; int tss_ldt; int tss_cr3; int tss_eip; int tss_eax; int tss_ecx; int tss_edx; int tss_ebx; int tss_esp; int tss_ebp; int tss_esi; int tss_edi; int tss_es; int tss_cs; int tss_ss; int tss_ds; int tss_fs; int tss_gs; int tss_link; } ;
struct seg_desc {int dummy; } ;
struct iovec {int dummy; } ;


 scalar_t__ PAGING_MODE_FLAT ;
 scalar_t__ PAGING_MODE_PAE ;
 int PSL_NT ;
 int SEL_RPL_MASK ;
 int SETREG (struct vmctx*,int,int ,int) ;
 scalar_t__ TSR_IRET ;
 scalar_t__ TSR_JMP ;
 int VM_REG_GUEST_CR3 ;
 int VM_REG_GUEST_CS ;
 int VM_REG_GUEST_DS ;
 int VM_REG_GUEST_ES ;
 int VM_REG_GUEST_FS ;
 int VM_REG_GUEST_GS ;
 int VM_REG_GUEST_LDTR ;
 int VM_REG_GUEST_PDPTE0 ;
 int VM_REG_GUEST_PDPTE1 ;
 int VM_REG_GUEST_PDPTE2 ;
 int VM_REG_GUEST_PDPTE3 ;
 int VM_REG_GUEST_RAX ;
 int VM_REG_GUEST_RBP ;
 int VM_REG_GUEST_RBX ;
 int VM_REG_GUEST_RCX ;
 int VM_REG_GUEST_RDI ;
 int VM_REG_GUEST_RDX ;
 int VM_REG_GUEST_RFLAGS ;
 int VM_REG_GUEST_RIP ;
 int VM_REG_GUEST_RSI ;
 int VM_REG_GUEST_RSP ;
 int VM_REG_GUEST_SS ;
 int* paddr_guest2host (struct vmctx*,int,int) ;
 int update_seg_desc (struct vmctx*,int,int ,struct seg_desc*) ;
 int validate_seg_desc (struct vmctx*,int,struct vm_task_switch*,int ,struct seg_desc*,int*) ;
 int vm_copyout (struct vmctx*,int,struct tss32*,struct iovec*,int) ;
 int vm_inject_gp (struct vmctx*,int) ;

__attribute__((used)) static int
tss32_restore(struct vmctx *ctx, int vcpu, struct vm_task_switch *ts,
    uint16_t ot_sel, struct tss32 *tss, struct iovec *iov, int *faultptr)
{
 struct seg_desc seg_desc, seg_desc2;
 uint64_t *pdpte, maxphyaddr, reserved;
 uint32_t eflags;
 int error, i;
 bool nested;

 nested = 0;
 if (ts->reason != TSR_IRET && ts->reason != TSR_JMP) {
  tss->tss_link = ot_sel;
  nested = 1;
 }

 eflags = tss->tss_eflags;
 if (nested)
  eflags |= PSL_NT;


 SETREG(ctx, vcpu, VM_REG_GUEST_LDTR, tss->tss_ldt);


 if (ts->paging.paging_mode != PAGING_MODE_FLAT) {
  if (ts->paging.paging_mode == PAGING_MODE_PAE) {



   maxphyaddr = (1UL << 36) - 1;
   pdpte = paddr_guest2host(ctx, tss->tss_cr3 & ~0x1f, 32);
   for (i = 0; i < 4; i++) {

    if (!(pdpte[i] & 0x1))
     continue;




    reserved = ~maxphyaddr | 0x1E6;
    if (pdpte[i] & reserved) {
     vm_inject_gp(ctx, vcpu);
     return (1);
    }
   }
   SETREG(ctx, vcpu, VM_REG_GUEST_PDPTE0, pdpte[0]);
   SETREG(ctx, vcpu, VM_REG_GUEST_PDPTE1, pdpte[1]);
   SETREG(ctx, vcpu, VM_REG_GUEST_PDPTE2, pdpte[2]);
   SETREG(ctx, vcpu, VM_REG_GUEST_PDPTE3, pdpte[3]);
  }
  SETREG(ctx, vcpu, VM_REG_GUEST_CR3, tss->tss_cr3);
  ts->paging.cr3 = tss->tss_cr3;
 }


 SETREG(ctx, vcpu, VM_REG_GUEST_RFLAGS, eflags);
 SETREG(ctx, vcpu, VM_REG_GUEST_RIP, tss->tss_eip);


 SETREG(ctx, vcpu, VM_REG_GUEST_RAX, tss->tss_eax);
 SETREG(ctx, vcpu, VM_REG_GUEST_RCX, tss->tss_ecx);
 SETREG(ctx, vcpu, VM_REG_GUEST_RDX, tss->tss_edx);
 SETREG(ctx, vcpu, VM_REG_GUEST_RBX, tss->tss_ebx);
 SETREG(ctx, vcpu, VM_REG_GUEST_RSP, tss->tss_esp);
 SETREG(ctx, vcpu, VM_REG_GUEST_RBP, tss->tss_ebp);
 SETREG(ctx, vcpu, VM_REG_GUEST_RSI, tss->tss_esi);
 SETREG(ctx, vcpu, VM_REG_GUEST_RDI, tss->tss_edi);


 SETREG(ctx, vcpu, VM_REG_GUEST_ES, tss->tss_es);
 SETREG(ctx, vcpu, VM_REG_GUEST_CS, tss->tss_cs);
 SETREG(ctx, vcpu, VM_REG_GUEST_SS, tss->tss_ss);
 SETREG(ctx, vcpu, VM_REG_GUEST_DS, tss->tss_ds);
 SETREG(ctx, vcpu, VM_REG_GUEST_FS, tss->tss_fs);
 SETREG(ctx, vcpu, VM_REG_GUEST_GS, tss->tss_gs);





 if (nested)
  vm_copyout(ctx, vcpu, tss, iov, sizeof(*tss));


 error = validate_seg_desc(ctx, vcpu, ts, VM_REG_GUEST_LDTR, &seg_desc,
     faultptr);
 if (error || *faultptr)
  return (error);
 update_seg_desc(ctx, vcpu, VM_REG_GUEST_LDTR, &seg_desc);
 error = validate_seg_desc(ctx, vcpu, ts, VM_REG_GUEST_CS, &seg_desc,
     faultptr);
 if (error || *faultptr)
  return (error);

 error = validate_seg_desc(ctx, vcpu, ts, VM_REG_GUEST_SS, &seg_desc2,
     faultptr);
 if (error || *faultptr)
  return (error);
 update_seg_desc(ctx, vcpu, VM_REG_GUEST_CS, &seg_desc);
 update_seg_desc(ctx, vcpu, VM_REG_GUEST_SS, &seg_desc2);
 ts->paging.cpl = tss->tss_cs & SEL_RPL_MASK;

 error = validate_seg_desc(ctx, vcpu, ts, VM_REG_GUEST_DS, &seg_desc,
     faultptr);
 if (error || *faultptr)
  return (error);
 update_seg_desc(ctx, vcpu, VM_REG_GUEST_DS, &seg_desc);

 error = validate_seg_desc(ctx, vcpu, ts, VM_REG_GUEST_ES, &seg_desc,
     faultptr);
 if (error || *faultptr)
  return (error);
 update_seg_desc(ctx, vcpu, VM_REG_GUEST_ES, &seg_desc);

 error = validate_seg_desc(ctx, vcpu, ts, VM_REG_GUEST_FS, &seg_desc,
     faultptr);
 if (error || *faultptr)
  return (error);
 update_seg_desc(ctx, vcpu, VM_REG_GUEST_FS, &seg_desc);

 error = validate_seg_desc(ctx, vcpu, ts, VM_REG_GUEST_GS, &seg_desc,
     faultptr);
 if (error || *faultptr)
  return (error);
 update_seg_desc(ctx, vcpu, VM_REG_GUEST_GS, &seg_desc);

 return (0);
}
