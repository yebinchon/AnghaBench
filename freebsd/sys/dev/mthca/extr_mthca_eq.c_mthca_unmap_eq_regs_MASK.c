#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ecr_base; } ;
struct TYPE_4__ {int /*<<< orphan*/  eq_arm; int /*<<< orphan*/  eq_set_ci_base; } ;
struct TYPE_6__ {TYPE_2__ tavor; TYPE_1__ arbel; } ;
struct mthca_dev {int /*<<< orphan*/  clr_base; TYPE_3__ eq_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mthca_dev*) ; 

__attribute__((used)) static void FUNC2(struct mthca_dev *dev)
{
	if (FUNC1(dev)) {
		FUNC0(dev->eq_regs.arbel.eq_set_ci_base);
		FUNC0(dev->eq_regs.arbel.eq_arm);
		FUNC0(dev->clr_base);
	} else {
		FUNC0(dev->eq_regs.tavor.ecr_base);
		FUNC0(dev->clr_base);
	}
}