#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ dr_dlid; scalar_t__ dr_slid; } ;
struct TYPE_4__ {TYPE_1__ dr; } ;
struct opa_smp {TYPE_2__ route; int /*<<< orphan*/  hop_cnt; int /*<<< orphan*/  hop_ptr; } ;
typedef  enum smi_forward_action { ____Placeholder_smi_forward_action } smi_forward_action ;

/* Variables and functions */
 scalar_t__ OPA_LID_PERMISSIVE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct opa_smp*) ; 

enum smi_forward_action FUNC2(struct opa_smp *smp)
{
	return FUNC0(smp->hop_ptr, smp->hop_cnt,
					  FUNC1(smp),
					  smp->route.dr.dr_dlid ==
					  OPA_LID_PERMISSIVE,
					  smp->route.dr.dr_slid ==
					  OPA_LID_PERMISSIVE);
}