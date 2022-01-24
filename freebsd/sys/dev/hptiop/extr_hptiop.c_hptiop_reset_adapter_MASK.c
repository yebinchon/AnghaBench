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
struct hpt_iop_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOPMU_INBOUND_MSG0_RESET ; 
 int /*<<< orphan*/  IOPMU_INBOUND_MSG0_START_BACKGROUND_TASK ; 
 scalar_t__ FUNC0 (struct hpt_iop_hba*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(void *argv)
{
	struct hpt_iop_hba * hba = (struct hpt_iop_hba *)argv;
	if (FUNC0(hba, IOPMU_INBOUND_MSG0_RESET, 60000))
		return;
	FUNC0(hba, IOPMU_INBOUND_MSG0_START_BACKGROUND_TASK, 5000);
}