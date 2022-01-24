#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hpt_iop_hba {TYPE_1__* ops; } ;
struct cam_sim {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* iop_intr ) (struct hpt_iop_hba*) ;} ;

/* Variables and functions */
 struct hpt_iop_hba* FUNC0 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC1 (struct hpt_iop_hba*) ; 

__attribute__((used)) static void FUNC2(struct cam_sim *sim)
{
	struct hpt_iop_hba *hba;

	hba = FUNC0(sim);
	hba->ops->iop_intr(hba);
}