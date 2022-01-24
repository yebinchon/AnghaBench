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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct vmctx {int dummy; } ;
struct vm_guest_paging {int dummy; } ;
struct user_segment_descriptor {int dummy; } ;
struct iovec {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  PROT_WRITE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int VM_REG_GUEST_GDTR ; 
 int VM_REG_GUEST_LDTR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct iovec*) ; 
 int FUNC5 (struct vmctx*,int,struct vm_guest_paging*,scalar_t__,int,int /*<<< orphan*/ ,struct iovec*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct vmctx*,int,struct iovec*,struct user_segment_descriptor*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vmctx*,int,struct user_segment_descriptor*,struct iovec*,int) ; 
 int FUNC8 (struct vmctx*,int,int,scalar_t__*,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC9(struct vmctx *ctx, int vcpu, struct vm_guest_paging *paging,
    uint16_t sel, struct user_segment_descriptor *desc, bool doread,
    int *faultptr)
{
	struct iovec iov[2];
	uint64_t base;
	uint32_t limit, access;
	int error, reg;

	reg = FUNC0(sel) ? VM_REG_GUEST_LDTR : VM_REG_GUEST_GDTR;
	error = FUNC8(ctx, vcpu, reg, &base, &limit, &access);
	FUNC3(error == 0);
	FUNC3(limit >= FUNC1(sel));

	error = FUNC5(ctx, vcpu, paging, base + FUNC2(sel),
	    sizeof(*desc), doread ? PROT_READ : PROT_WRITE, iov, FUNC4(iov),
	    faultptr);
	if (error || *faultptr)
		return (error);

	if (doread)
		FUNC6(ctx, vcpu, iov, desc, sizeof(*desc));
	else
		FUNC7(ctx, vcpu, desc, iov, sizeof(*desc));
	return (0);
}