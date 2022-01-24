#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64_t ;
struct vmctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCB_OFF_AVIC_BAR ; 
 int /*<<< orphan*/  VMCB_OFF_AVIC_LT ; 
 int /*<<< orphan*/  VMCB_OFF_AVIC_PAGE ; 
 int /*<<< orphan*/  VMCB_OFF_AVIC_PT ; 
 int /*<<< orphan*/  VMCB_OFF_CR_INTERCEPT ; 
 int /*<<< orphan*/  VMCB_OFF_DR_INTERCEPT ; 
 int /*<<< orphan*/  VMCB_OFF_EXC_INTERCEPT ; 
 int /*<<< orphan*/  VMCB_OFF_EXITINFO1 ; 
 int /*<<< orphan*/  VMCB_OFF_EXITINFO2 ; 
 int /*<<< orphan*/  VMCB_OFF_EXITINTINFO ; 
 int /*<<< orphan*/  VMCB_OFF_INST1_INTERCEPT ; 
 int /*<<< orphan*/  VMCB_OFF_INST2_INTERCEPT ; 
 int /*<<< orphan*/  VMCB_OFF_TLB_CTRL ; 
 int /*<<< orphan*/  VMCB_OFF_VIRQ ; 
 scalar_t__ get_all ; 
 scalar_t__ get_apic_access_addr ; 
 scalar_t__ get_avic_table ; 
 scalar_t__ get_virtual_apic_addr ; 
 scalar_t__ get_vmcb_exit_details ; 
 scalar_t__ get_vmcb_intercept ; 
 scalar_t__ get_vmcb_tlb_ctrl ; 
 scalar_t__ get_vmcb_virq ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (struct vmctx*,int,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int
FUNC2(struct vmctx *ctx, int vcpu)
{
	uint64_t ctl, addr;
	int error = 0;

	if (!error && (get_vmcb_intercept || get_all)) {
		error = FUNC1(ctx, vcpu, VMCB_OFF_CR_INTERCEPT, 4,
		    &ctl);
		if (error == 0)
			FUNC0("cr_intercept[%d]\t0x%08x\n", vcpu, (int)ctl);

		error = FUNC1(ctx, vcpu, VMCB_OFF_DR_INTERCEPT, 4,
		    &ctl);
		if (error == 0)
			FUNC0("dr_intercept[%d]\t0x%08x\n", vcpu, (int)ctl);

		error = FUNC1(ctx, vcpu, VMCB_OFF_EXC_INTERCEPT, 4,
		    &ctl);
		if (error == 0)
			FUNC0("exc_intercept[%d]\t0x%08x\n", vcpu, (int)ctl);

		error = FUNC1(ctx, vcpu, VMCB_OFF_INST1_INTERCEPT,
		    4, &ctl);
		if (error == 0)
			FUNC0("inst1_intercept[%d]\t0x%08x\n", vcpu, (int)ctl);

		error = FUNC1(ctx, vcpu, VMCB_OFF_INST2_INTERCEPT,
		    4, &ctl);
		if (error == 0)
			FUNC0("inst2_intercept[%d]\t0x%08x\n", vcpu, (int)ctl);
	}

	if (!error && (get_vmcb_tlb_ctrl || get_all)) {
		error = FUNC1(ctx, vcpu, VMCB_OFF_TLB_CTRL,
					  4, &ctl);
		if (error == 0)
			FUNC0("TLB ctrl[%d]\t0x%016lx\n", vcpu, ctl);
	}

	if (!error && (get_vmcb_exit_details || get_all)) {
		error = FUNC1(ctx, vcpu, VMCB_OFF_EXITINFO1,
					  8, &ctl);
		if (error == 0)
			FUNC0("exitinfo1[%d]\t0x%016lx\n", vcpu, ctl);
		error = FUNC1(ctx, vcpu, VMCB_OFF_EXITINFO2,
					  8, &ctl);
		if (error == 0)
			FUNC0("exitinfo2[%d]\t0x%016lx\n", vcpu, ctl);
		error = FUNC1(ctx, vcpu, VMCB_OFF_EXITINTINFO,
					  8, &ctl);
		if (error == 0)
			FUNC0("exitintinfo[%d]\t0x%016lx\n", vcpu, ctl);
	}

	if (!error && (get_vmcb_virq || get_all)) {
		error = FUNC1(ctx, vcpu, VMCB_OFF_VIRQ,
					  8, &ctl);
		if (error == 0)
			FUNC0("v_irq/tpr[%d]\t0x%016lx\n", vcpu, ctl);
	}

	if (!error && (get_apic_access_addr || get_all)) {
		error = FUNC1(ctx, vcpu, VMCB_OFF_AVIC_BAR, 8,
					  &addr);
		if (error == 0)
			FUNC0("AVIC apic_bar[%d]\t0x%016lx\n", vcpu, addr);
	}

	if (!error && (get_virtual_apic_addr || get_all)) {
		error = FUNC1(ctx, vcpu, VMCB_OFF_AVIC_PAGE, 8,
					  &addr);
		if (error == 0)
			FUNC0("AVIC backing page[%d]\t0x%016lx\n", vcpu, addr);
	}

	if (!error && (get_avic_table || get_all)) {
		error = FUNC1(ctx, vcpu, VMCB_OFF_AVIC_LT, 8,
					  &addr);
		if (error == 0)
			FUNC0("AVIC logical table[%d]\t0x%016lx\n",
				vcpu, addr);
		error = FUNC1(ctx, vcpu, VMCB_OFF_AVIC_PT, 8,
					  &addr);
		if (error == 0)
			FUNC0("AVIC physical table[%d]\t0x%016lx\n",
				vcpu, addr);
	}

	return (error);
}