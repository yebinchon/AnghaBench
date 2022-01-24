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
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int MVIOP_MU_OUTBOUND_INT_MSG ; 
 int MVIOP_MU_OUTBOUND_INT_POSTQUEUE ; 
 int /*<<< orphan*/  FUNC4 (struct hpt_iop_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct hpt_iop_hba*,int) ; 
 int /*<<< orphan*/  outbound_doorbell ; 
 int /*<<< orphan*/  outbound_msg ; 

__attribute__((used)) static int FUNC6(struct hpt_iop_hba * hba)
{
	u_int32_t status;
	int ret = 0;

	status = FUNC0(outbound_doorbell);

	if (status)
		FUNC2(outbound_doorbell, ~status);

	if (status & MVIOP_MU_OUTBOUND_INT_MSG) {
		u_int32_t msg = FUNC1(outbound_msg);
		FUNC3(("hptiop: received outbound msg %x\n", msg));
		FUNC5(hba, msg);
		ret = 1;
	}

	if (status & MVIOP_MU_OUTBOUND_INT_POSTQUEUE) {
		FUNC4(hba);
		ret = 1;
	}

	return ret;
}