
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct vmctx {int dummy; } ;
struct vm_guest_paging {scalar_t__ cpu_mode; scalar_t__ cpl; } ;
struct vm_task_switch {int tsssel; int ext; int reason; int errcode; struct vm_guest_paging paging; scalar_t__ errcode_valid; } ;
struct TYPE_2__ {struct vm_task_switch task_switch; } ;
struct vm_exit {scalar_t__ inst_length; scalar_t__ rip; TYPE_1__ u; } ;
struct user_segment_descriptor {int sd_type; } ;
struct tss32 {int tss_eip; } ;
struct seg_desc {int limit; int base; scalar_t__ access; } ;
struct iovec {int dummy; } ;
typedef enum task_switch_reason { ____Placeholder_task_switch_reason } task_switch_reason ;


 int CHKERR (int,int) ;
 scalar_t__ CPU_MODE_PROTECTED ;
 int CR0_TS ;
 int GETREG (struct vmctx*,int,int ) ;
 int IDT_GP ;
 int IDT_NP ;
 int IDT_TS ;
 scalar_t__ IDXSEL (int) ;
 scalar_t__ ISLDT (int) ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SDT_SYS286BSY ;
 int SDT_SYS286TSS ;
 int SDT_SYS386BSY ;
 int SDT_SYS386TSS ;
 scalar_t__ SEG_DESC_PRESENT (scalar_t__) ;
 int SEG_DESC_TYPE (scalar_t__) ;
 int SEG_DESC_UNUSABLE (scalar_t__) ;
 int SETREG (struct vmctx*,int,int ,int) ;
 scalar_t__ TSR_IDT_GATE ;
 int TSR_IRET ;
 int TSR_JMP ;
 scalar_t__ TSS_BUSY (int) ;
 int VMEXIT_ABORT ;
 int VMEXIT_CONTINUE ;
 int VM_REG_GUEST_CR0 ;
 int VM_REG_GUEST_RIP ;
 int VM_REG_GUEST_TR ;
 int assert (int) ;
 int desc_table_write (struct vmctx*,int,struct vm_guest_paging*,int,struct user_segment_descriptor*,int*) ;
 int fprintf (int ,char*) ;
 int nitems (struct iovec*) ;
 int push_errcode (struct vmctx*,int,struct vm_guest_paging*,int,int ,int*) ;
 int read_tss_descriptor (struct vmctx*,int,struct vm_task_switch*,int,struct user_segment_descriptor*,int*) ;
 int sel_exception (struct vmctx*,int,int ,int,int) ;
 int stderr ;
 int tss32_restore (struct vmctx*,int,struct vm_task_switch*,int,struct tss32*,struct iovec*,int*) ;
 int tss32_save (struct vmctx*,int,struct vm_task_switch*,scalar_t__,struct tss32*,struct iovec*) ;
 int update_seg_desc (struct vmctx*,int,int ,struct seg_desc*) ;
 struct seg_desc usd_to_seg_desc (struct user_segment_descriptor*) ;
 int vm_copy_setup (struct vmctx*,int,struct vm_guest_paging*,int,int,int,struct iovec*,int ,int*) ;
 int vm_copyin (struct vmctx*,int,struct iovec*,struct tss32*,int) ;
 int vm_get_desc (struct vmctx*,int,int ,int*,scalar_t__*,scalar_t__*) ;
 int vm_set_intinfo (struct vmctx*,int,int ) ;
 int vm_set_register (struct vmctx*,int,int ,int ) ;

int
vmexit_task_switch(struct vmctx *ctx, struct vm_exit *vmexit, int *pvcpu)
{
 struct seg_desc nt;
 struct tss32 oldtss, newtss;
 struct vm_task_switch *task_switch;
 struct vm_guest_paging *paging, sup_paging;
 struct user_segment_descriptor nt_desc, ot_desc;
 struct iovec nt_iov[2], ot_iov[2];
 uint64_t cr0, ot_base;
 uint32_t eip, ot_lim, access;
 int error, ext, fault, minlimit, nt_type, ot_type, vcpu;
 enum task_switch_reason reason;
 uint16_t nt_sel, ot_sel;

 task_switch = &vmexit->u.task_switch;
 nt_sel = task_switch->tsssel;
 ext = vmexit->u.task_switch.ext;
 reason = vmexit->u.task_switch.reason;
 paging = &vmexit->u.task_switch.paging;
 vcpu = *pvcpu;

 assert(paging->cpu_mode == CPU_MODE_PROTECTED);




 eip = vmexit->rip + vmexit->inst_length;







 sup_paging = *paging;
 sup_paging.cpl = 0;


 error = read_tss_descriptor(ctx, vcpu, task_switch, nt_sel, &nt_desc,
     &fault);
 CHKERR(error, fault);

 nt = usd_to_seg_desc(&nt_desc);


 nt_type = SEG_DESC_TYPE(nt.access);
 if (nt_type != SDT_SYS386BSY && nt_type != SDT_SYS386TSS &&
     nt_type != SDT_SYS286BSY && nt_type != SDT_SYS286TSS) {
  sel_exception(ctx, vcpu, IDT_TS, nt_sel, ext);
  goto done;
 }


 if (!SEG_DESC_PRESENT(nt.access)) {
  sel_exception(ctx, vcpu, IDT_NP, nt_sel, ext);
  goto done;
 }





 if (nt_type == SDT_SYS386BSY || nt_type == SDT_SYS386TSS)
  minlimit = 104 - 1;
 else if (nt_type == SDT_SYS286BSY || nt_type == SDT_SYS286TSS)
  minlimit = 44 - 1;
 else
  minlimit = 0;

 assert(minlimit > 0);
 if (nt.limit < minlimit) {
  sel_exception(ctx, vcpu, IDT_TS, nt_sel, ext);
  goto done;
 }


 if (reason == TSR_IRET && !TSS_BUSY(nt_type)) {
  sel_exception(ctx, vcpu, IDT_TS, nt_sel, ext);
  goto done;
 }





 if (reason != TSR_IRET && TSS_BUSY(nt_type)) {
  sel_exception(ctx, vcpu, IDT_GP, nt_sel, ext);
  goto done;
 }


 error = vm_copy_setup(ctx, vcpu, &sup_paging, nt.base, minlimit + 1,
     PROT_READ | PROT_WRITE, nt_iov, nitems(nt_iov), &fault);
 CHKERR(error, fault);
 vm_copyin(ctx, vcpu, nt_iov, &newtss, minlimit + 1);


 ot_sel = GETREG(ctx, vcpu, VM_REG_GUEST_TR);
 if (ISLDT(ot_sel) || IDXSEL(ot_sel) == 0) {






  sel_exception(ctx, vcpu, IDT_TS, ot_sel, task_switch->ext);
  goto done;
 }


 error = vm_get_desc(ctx, vcpu, VM_REG_GUEST_TR, &ot_base, &ot_lim,
     &access);
 assert(error == 0);
 assert(!SEG_DESC_UNUSABLE(access) && SEG_DESC_PRESENT(access));
 ot_type = SEG_DESC_TYPE(access);
 assert(ot_type == SDT_SYS386BSY || ot_type == SDT_SYS286BSY);


 error = read_tss_descriptor(ctx, vcpu, task_switch, ot_sel, &ot_desc,
     &fault);
 CHKERR(error, fault);


 error = vm_copy_setup(ctx, vcpu, &sup_paging, ot_base, minlimit + 1,
     PROT_READ | PROT_WRITE, ot_iov, nitems(ot_iov), &fault);
 CHKERR(error, fault);
 vm_copyin(ctx, vcpu, ot_iov, &oldtss, minlimit + 1);





 if (reason == TSR_IRET || reason == TSR_JMP) {
  ot_desc.sd_type &= ~0x2;
  error = desc_table_write(ctx, vcpu, &sup_paging, ot_sel,
      &ot_desc, &fault);
  CHKERR(error, fault);
 }

 if (nt_type == SDT_SYS286BSY || nt_type == SDT_SYS286TSS) {
  fprintf(stderr, "Task switch to 16-bit TSS not supported\n");
  return (VMEXIT_ABORT);
 }


 tss32_save(ctx, vcpu, task_switch, eip, &oldtss, ot_iov);





 if (reason != TSR_IRET) {
  nt_desc.sd_type |= 0x2;
  error = desc_table_write(ctx, vcpu, &sup_paging, nt_sel,
      &nt_desc, &fault);
  CHKERR(error, fault);
 }


 SETREG(ctx, vcpu, VM_REG_GUEST_TR, nt_sel);


 nt = usd_to_seg_desc(&nt_desc);
 update_seg_desc(ctx, vcpu, VM_REG_GUEST_TR, &nt);


 cr0 = GETREG(ctx, vcpu, VM_REG_GUEST_CR0);
 SETREG(ctx, vcpu, VM_REG_GUEST_CR0, cr0 | CR0_TS);






 error = vm_set_register(ctx, vcpu, VM_REG_GUEST_RIP, newtss.tss_eip);
 assert(error == 0);


 error = tss32_restore(ctx, vcpu, task_switch, ot_sel, &newtss, nt_iov,
     &fault);
 CHKERR(error, fault);






 if (task_switch->errcode_valid) {
  assert(task_switch->ext);
  assert(task_switch->reason == TSR_IDT_GATE);
  error = push_errcode(ctx, vcpu, &task_switch->paging, nt_type,
      task_switch->errcode, &fault);
  CHKERR(error, fault);
 }
 if (task_switch->reason == TSR_IDT_GATE) {
  error = vm_set_intinfo(ctx, vcpu, 0);
  assert(error == 0);
 }




done:
 return (VMEXIT_CONTINUE);
}
