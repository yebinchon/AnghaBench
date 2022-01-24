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
struct aic_softc {int flags; TYPE_1__* platform_data; int /*<<< orphan*/  timedout_scbs; } ;
struct TYPE_2__ {int /*<<< orphan*/ * recovery_thread; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int AIC_SHUTDOWN_RECOVERY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PUSER ; 
 int /*<<< orphan*/  FUNC1 (struct aic_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct aic_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct aic_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aic_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct aic_softc *aic;

	aic = (struct aic_softc *)arg;
	FUNC1(aic);
	for (;;) {
		
		if (FUNC0(&aic->timedout_scbs) != 0
		 && (aic->flags & AIC_SHUTDOWN_RECOVERY) == 0)
			FUNC5(aic, &aic->platform_data->mtx, PUSER, "idle", 0);

		if ((aic->flags & AIC_SHUTDOWN_RECOVERY) != 0)
			break;

		FUNC2(aic);
	}
	aic->platform_data->recovery_thread = NULL;
	FUNC6(aic->platform_data);
	FUNC3(aic);
	FUNC4(0);
}