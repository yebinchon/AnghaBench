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
struct ib_smp {scalar_t__ dr_dlid; scalar_t__ dr_slid; int /*<<< orphan*/  hop_cnt; int /*<<< orphan*/  hop_ptr; } ;
typedef  enum smi_forward_action { ____Placeholder_smi_forward_action } smi_forward_action ;

/* Variables and functions */
 scalar_t__ IB_LID_PERMISSIVE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_smp*) ; 

enum smi_forward_action FUNC2(struct ib_smp *smp)
{
	return FUNC0(smp->hop_ptr, smp->hop_cnt,
					  FUNC1(smp),
					  smp->dr_dlid == IB_LID_PERMISSIVE,
					  smp->dr_slid == IB_LID_PERMISSIVE);
}