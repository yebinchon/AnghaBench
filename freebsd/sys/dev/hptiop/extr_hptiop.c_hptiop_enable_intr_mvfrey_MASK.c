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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int CPU_TO_F0_DRBL_MSG_A_BIT ; 
 int /*<<< orphan*/  f0_doorbell_enable ; 
 int /*<<< orphan*/  isr_enable ; 
 int /*<<< orphan*/  pcie_f0_int_enable ; 

__attribute__((used)) static void FUNC2(struct hpt_iop_hba *hba)
{
	FUNC1(f0_doorbell_enable, CPU_TO_F0_DRBL_MSG_A_BIT);
	FUNC0(f0_doorbell_enable);

	FUNC1(isr_enable, 0x1);
	FUNC0(isr_enable);

	FUNC1(pcie_f0_int_enable, 0x1010);
	FUNC0(pcie_f0_int_enable);
}