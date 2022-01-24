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
struct ocs_softc {int /*<<< orphan*/  sim_lock; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  vec; struct ocs_softc* softc; } ;
typedef  TYPE_1__ ocs_intr_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_OS_MAX_ISR_TIME_MSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *context)
{
	ocs_intr_ctx_t	*intr = context;
	struct ocs_softc *ocs = intr->softc;

	FUNC0(&ocs->sim_lock);
		FUNC2(&ocs->hw, intr->vec, OCS_OS_MAX_ISR_TIME_MSEC);
	FUNC1(&ocs->sim_lock);
}