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
 int /*<<< orphan*/  outbound_intmask ; 
 int /*<<< orphan*/  outbound_intstatus ; 

__attribute__((used)) static void FUNC2(struct hpt_iop_hba *hba)
{
	u_int32_t int_mask;

	int_mask = FUNC0(outbound_intmask);

	int_mask |= IOPMU_OUTBOUND_INT_POSTQUEUE | IOPMU_OUTBOUND_INT_MSG0;
	FUNC1(outbound_intmask, int_mask);
	FUNC0(outbound_intstatus);
}