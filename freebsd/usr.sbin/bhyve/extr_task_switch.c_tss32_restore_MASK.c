#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct vmctx {int dummy; } ;
struct TYPE_2__ {scalar_t__ paging_mode; int cr3; int cpl; } ;
struct vm_task_switch {scalar_t__ reason; TYPE_1__ paging; } ;
struct tss32 {int tss_eflags; int tss_ldt; int tss_cr3; int tss_eip; int tss_eax; int tss_ecx; int tss_edx; int tss_ebx; int tss_esp; int tss_ebp; int tss_esi; int tss_edi; int tss_es; int tss_cs; int tss_ss; int tss_ds; int tss_fs; int tss_gs; int /*<<< orphan*/  tss_link; } ;
struct seg_desc {int dummy; } ;
struct iovec {int dummy; } ;

/* Variables and functions */
 scalar_t__ PAGING_MODE_FLAT ; 
 scalar_t__ PAGING_MODE_PAE ; 
 int PSL_NT ; 
 int SEL_RPL_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct vmctx*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ TSR_IRET ; 
 scalar_t__ TSR_JMP ; 
 int /*<<< orphan*/  VM_REG_GUEST_CR3 ; 
 int /*<<< orphan*/  VM_REG_GUEST_CS ; 
 int /*<<< orphan*/  VM_REG_GUEST_DS ; 
 int /*<<< orphan*/  VM_REG_GUEST_ES ; 
 int /*<<< orphan*/  VM_REG_GUEST_FS ; 
 int /*<<< orphan*/  VM_REG_GUEST_GS ; 
 int /*<<< orphan*/  VM_REG_GUEST_LDTR ; 
 int /*<<< orphan*/  VM_REG_GUEST_PDPTE0 ; 
 int /*<<< orphan*/  VM_REG_GUEST_PDPTE1 ; 
 int /*<<< orphan*/  VM_REG_GUEST_PDPTE2 ; 
 int /*<<< orphan*/  VM_REG_GUEST_PDPTE3 ; 
 int /*<<< orphan*/  VM_REG_GUEST_RAX ; 
 int /*<<< orphan*/  VM_REG_GUEST_RBP ; 
 int /*<<< orphan*/  VM_REG_GUEST_RBX ; 
 int /*<<< orphan*/  VM_REG_GUEST_RCX ; 
 int /*<<< orphan*/  VM_REG_GUEST_RDI ; 
 int /*<<< orphan*/  VM_REG_GUEST_RDX ; 
 int /*<<< orphan*/  VM_REG_GUEST_RFLAGS ; 
 int /*<<< orphan*/  VM_REG_GUEST_RIP ; 
 int /*<<< orphan*/  VM_REG_GUEST_RSI ; 
 int /*<<< orphan*/  VM_REG_GUEST_RSP ; 
 int /*<<< orphan*/  VM_REG_GUEST_SS ; 
 int* FUNC1 (struct vmctx*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vmctx*,int,int /*<<< orphan*/ ,struct seg_desc*) ; 
 int FUNC3 (struct vmctx*,int,struct vm_task_switch*,int /*<<< orphan*/ ,struct seg_desc*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmctx*,int,struct tss32*,struct iovec*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vmctx*,int) ; 

__attribute__((used)) static int
FUNC6(struct vmctx *ctx, int vcpu, struct vm_task_switch *ts,
    uint16_t ot_sel, struct tss32 *tss, struct iovec *iov, int *faultptr)
{
	struct seg_desc seg_desc, seg_desc2;
	uint64_t *pdpte, maxphyaddr, reserved;
	uint32_t eflags;
	int error, i;
	bool nested;

	nested = false;
	if (ts->reason != TSR_IRET && ts->reason != TSR_JMP) {
		tss->tss_link = ot_sel;
		nested = true;
	}

	eflags = tss->tss_eflags;
	if (nested)
		eflags |= PSL_NT;

	/* LDTR */
	FUNC0(ctx, vcpu, VM_REG_GUEST_LDTR, tss->tss_ldt);

	/* PBDR */
	if (ts->paging.paging_mode != PAGING_MODE_FLAT) {
		if (ts->paging.paging_mode == PAGING_MODE_PAE) {
			/*
			 * XXX Assuming 36-bit MAXPHYADDR.
			 */
			maxphyaddr = (1UL << 36) - 1;
			pdpte = FUNC1(ctx, tss->tss_cr3 & ~0x1f, 32);
			for (i = 0; i < 4; i++) {
				/* Check reserved bits if the PDPTE is valid */
				if (!(pdpte[i] & 0x1))
					continue;
				/*
				 * Bits 2:1, 8:5 and bits above the processor's
				 * maximum physical address are reserved.
				 */
				reserved = ~maxphyaddr | 0x1E6;
				if (pdpte[i] & reserved) {
					FUNC5(ctx, vcpu);
					return (1);
				}
			}
			FUNC0(ctx, vcpu, VM_REG_GUEST_PDPTE0, pdpte[0]);
			FUNC0(ctx, vcpu, VM_REG_GUEST_PDPTE1, pdpte[1]);
			FUNC0(ctx, vcpu, VM_REG_GUEST_PDPTE2, pdpte[2]);
			FUNC0(ctx, vcpu, VM_REG_GUEST_PDPTE3, pdpte[3]);
		}
		FUNC0(ctx, vcpu, VM_REG_GUEST_CR3, tss->tss_cr3);
		ts->paging.cr3 = tss->tss_cr3;
	}

	/* eflags and eip */
	FUNC0(ctx, vcpu, VM_REG_GUEST_RFLAGS, eflags);
	FUNC0(ctx, vcpu, VM_REG_GUEST_RIP, tss->tss_eip);

	/* General purpose registers */
	FUNC0(ctx, vcpu, VM_REG_GUEST_RAX, tss->tss_eax);
	FUNC0(ctx, vcpu, VM_REG_GUEST_RCX, tss->tss_ecx);
	FUNC0(ctx, vcpu, VM_REG_GUEST_RDX, tss->tss_edx);
	FUNC0(ctx, vcpu, VM_REG_GUEST_RBX, tss->tss_ebx);
	FUNC0(ctx, vcpu, VM_REG_GUEST_RSP, tss->tss_esp);
	FUNC0(ctx, vcpu, VM_REG_GUEST_RBP, tss->tss_ebp);
	FUNC0(ctx, vcpu, VM_REG_GUEST_RSI, tss->tss_esi);
	FUNC0(ctx, vcpu, VM_REG_GUEST_RDI, tss->tss_edi);

	/* Segment selectors */
	FUNC0(ctx, vcpu, VM_REG_GUEST_ES, tss->tss_es);
	FUNC0(ctx, vcpu, VM_REG_GUEST_CS, tss->tss_cs);
	FUNC0(ctx, vcpu, VM_REG_GUEST_SS, tss->tss_ss);
	FUNC0(ctx, vcpu, VM_REG_GUEST_DS, tss->tss_ds);
	FUNC0(ctx, vcpu, VM_REG_GUEST_FS, tss->tss_fs);
	FUNC0(ctx, vcpu, VM_REG_GUEST_GS, tss->tss_gs);

	/*
	 * If this is a nested task then write out the new TSS to update
	 * the previous link field.
	 */
	if (nested)
		FUNC4(ctx, vcpu, tss, iov, sizeof(*tss));

	/* Validate segment descriptors */
	error = FUNC3(ctx, vcpu, ts, VM_REG_GUEST_LDTR, &seg_desc,
	    faultptr);
	if (error || *faultptr)
		return (error);
	FUNC2(ctx, vcpu, VM_REG_GUEST_LDTR, &seg_desc);

	/*
	 * Section "Checks on Guest Segment Registers", Intel SDM, Vol 3.
	 *
	 * The SS and CS attribute checks on VM-entry are inter-dependent so
	 * we need to make sure that both segments are valid before updating
	 * either of them. This ensures that the VMCS state can pass the
	 * VM-entry checks so the guest can handle any exception injected
	 * during task switch emulation.
	 */
	error = FUNC3(ctx, vcpu, ts, VM_REG_GUEST_CS, &seg_desc,
	    faultptr);
	if (error || *faultptr)
		return (error);

	error = FUNC3(ctx, vcpu, ts, VM_REG_GUEST_SS, &seg_desc2,
	    faultptr);
	if (error || *faultptr)
		return (error);
	FUNC2(ctx, vcpu, VM_REG_GUEST_CS, &seg_desc);
	FUNC2(ctx, vcpu, VM_REG_GUEST_SS, &seg_desc2);
	ts->paging.cpl = tss->tss_cs & SEL_RPL_MASK;

	error = FUNC3(ctx, vcpu, ts, VM_REG_GUEST_DS, &seg_desc,
	    faultptr);
	if (error || *faultptr)
		return (error);
	FUNC2(ctx, vcpu, VM_REG_GUEST_DS, &seg_desc);

	error = FUNC3(ctx, vcpu, ts, VM_REG_GUEST_ES, &seg_desc,
	    faultptr);
	if (error || *faultptr)
		return (error);
	FUNC2(ctx, vcpu, VM_REG_GUEST_ES, &seg_desc);

	error = FUNC3(ctx, vcpu, ts, VM_REG_GUEST_FS, &seg_desc,
	    faultptr);
	if (error || *faultptr)
		return (error);
	FUNC2(ctx, vcpu, VM_REG_GUEST_FS, &seg_desc);

	error = FUNC3(ctx, vcpu, ts, VM_REG_GUEST_GS, &seg_desc,
	    faultptr);
	if (error || *faultptr)
		return (error);
	FUNC2(ctx, vcpu, VM_REG_GUEST_GS, &seg_desc);

	return (0);
}