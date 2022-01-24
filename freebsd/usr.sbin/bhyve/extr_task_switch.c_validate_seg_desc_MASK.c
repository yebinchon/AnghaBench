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
typedef  int uint16_t ;
struct vmctx {int dummy; } ;
struct vm_guest_paging {int /*<<< orphan*/  cpl; } ;
struct vm_task_switch {int /*<<< orphan*/  ext; struct vm_guest_paging paging; } ;
struct user_segment_descriptor {int sd_type; int sd_dpl; int /*<<< orphan*/  sd_p; } ;
struct seg_desc {int access; scalar_t__ limit; scalar_t__ base; } ;

/* Variables and functions */
 int FUNC0 (struct vmctx*,int,int const) ; 
 int IDT_NP ; 
 int IDT_SS ; 
 int IDT_TS ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int SEL_RPL_MASK ; 
#define  VM_REG_GUEST_CS 134 
#define  VM_REG_GUEST_DS 133 
#define  VM_REG_GUEST_ES 132 
#define  VM_REG_GUEST_FS 131 
#define  VM_REG_GUEST_GS 130 
#define  VM_REG_GUEST_LDTR 129 
#define  VM_REG_GUEST_SS 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct vmctx*,int,int) ; 
 int FUNC7 (struct vmctx*,int,struct vm_guest_paging*,int,struct user_segment_descriptor*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct vmctx*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 struct seg_desc FUNC11 (struct user_segment_descriptor*) ; 

__attribute__((used)) static int
FUNC12(struct vmctx *ctx, int vcpu, struct vm_task_switch *ts,
    int segment, struct seg_desc *seg_desc, int *faultptr)
{
	struct vm_guest_paging sup_paging;
	struct user_segment_descriptor usd;
	int error, idtvec;
	int cpl, dpl, rpl;
	uint16_t sel, cs;
	bool ldtseg, codeseg, stackseg, dataseg, conforming;

	ldtseg = codeseg = stackseg = dataseg = false;
	switch (segment) {
	case VM_REG_GUEST_LDTR:
		ldtseg = true;
		break;
	case VM_REG_GUEST_CS:
		codeseg = true;
		break;
	case VM_REG_GUEST_SS:
		stackseg = true;
		break;
	case VM_REG_GUEST_DS:
	case VM_REG_GUEST_ES:
	case VM_REG_GUEST_FS:
	case VM_REG_GUEST_GS:
		dataseg = true;
		break;
	default:
		FUNC3(0);
	}

	/* Get the segment selector */
	sel = FUNC0(ctx, vcpu, segment);

	/* LDT selector must point into the GDT */
	if (ldtseg && FUNC2(sel)) {
		FUNC9(ctx, vcpu, IDT_TS, sel, ts->ext);
		return (1);
	}

	/* Descriptor table limit check */
	if (FUNC6(ctx, vcpu, sel)) {
		FUNC9(ctx, vcpu, IDT_TS, sel, ts->ext);
		return (1);
	}

	/* NULL selector */
	if (FUNC1(sel) == 0) {
		/* Code and stack segment selectors cannot be NULL */
		if (codeseg || stackseg) {
			FUNC9(ctx, vcpu, IDT_TS, sel, ts->ext);
			return (1);
		}
		seg_desc->base = 0;
		seg_desc->limit = 0;
		seg_desc->access = 0x10000;	/* unusable */
		return (0);
	}

	/* Read the descriptor from the GDT/LDT */
	sup_paging = ts->paging;
	sup_paging.cpl = 0;	/* implicit supervisor mode */
	error = FUNC7(ctx, vcpu, &sup_paging, sel, &usd, faultptr);
	if (error || *faultptr)
		return (error);

	/* Verify that the descriptor type is compatible with the segment */
	if ((ldtseg && !FUNC8(usd.sd_type)) ||
	    (codeseg && !FUNC4(usd.sd_type)) ||
	    (dataseg && !FUNC5(usd.sd_type)) ||
	    (stackseg && !FUNC10(usd.sd_type))) {
		FUNC9(ctx, vcpu, IDT_TS, sel, ts->ext);
		return (1);
	}

	/* Segment must be marked present */
	if (!usd.sd_p) {
		if (ldtseg)
			idtvec = IDT_TS;
		else if (stackseg)
			idtvec = IDT_SS;
		else
			idtvec = IDT_NP;
		FUNC9(ctx, vcpu, idtvec, sel, ts->ext);
		return (1);
	}

	cs = FUNC0(ctx, vcpu, VM_REG_GUEST_CS);
	cpl = cs & SEL_RPL_MASK;
	rpl = sel & SEL_RPL_MASK;
	dpl = usd.sd_dpl;

	if (stackseg && (rpl != cpl || dpl != cpl)) {
		FUNC9(ctx, vcpu, IDT_TS, sel, ts->ext);
		return (1);
	}

	if (codeseg) {
		conforming = (usd.sd_type & 0x4) ? true : false;
		if ((conforming && (cpl < dpl)) ||
		    (!conforming && (cpl != dpl))) {
			FUNC9(ctx, vcpu, IDT_TS, sel, ts->ext);
			return (1);
		}
	}

	if (dataseg) {
		/*
		 * A data segment is always non-conforming except when it's
		 * descriptor is a readable, conforming code segment.
		 */
		if (FUNC4(usd.sd_type) && (usd.sd_type & 0x4) != 0)
			conforming = true;
		else
			conforming = false;

		if (!conforming && (rpl > dpl || cpl > dpl)) {
			FUNC9(ctx, vcpu, IDT_TS, sel, ts->ext);
			return (1);
		}
	}
	*seg_desc = FUNC11(&usd);
	return (0);
}