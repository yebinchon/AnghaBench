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
typedef  int u_int32_t ;
struct hpt_iop_hba {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int IOPMU_OUTBOUND_INT_MSG0 ; 
 int IOPMU_OUTBOUND_INT_POSTQUEUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hpt_iop_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct hpt_iop_hba*,int) ; 
 int /*<<< orphan*/  outbound_intstatus ; 
 int /*<<< orphan*/  outbound_msgaddr0 ; 

__attribute__((used)) static int FUNC5(struct hpt_iop_hba * hba)
{
	u_int32_t status;
	int ret = 0;

	status = FUNC0(outbound_intstatus);

	if (status & IOPMU_OUTBOUND_INT_MSG0) {
		u_int32_t msg = FUNC0(outbound_msgaddr0);
		FUNC2(("hptiop: received outbound msg %x\n", msg));
		FUNC1(outbound_intstatus, IOPMU_OUTBOUND_INT_MSG0);
		FUNC4(hba, msg);
		ret = 1;
	}

	if (status & IOPMU_OUTBOUND_INT_POSTQUEUE) {
		FUNC3(hba);
		ret = 1;
	}

	return ret;
}