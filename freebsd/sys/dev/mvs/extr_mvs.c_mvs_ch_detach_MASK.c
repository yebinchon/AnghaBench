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
struct mvs_channel {int pm_level; int /*<<< orphan*/  mtx; int /*<<< orphan*/  r_mem; int /*<<< orphan*/  unit; int /*<<< orphan*/  r_irq; int /*<<< orphan*/  ih; int /*<<< orphan*/  reset_timer; int /*<<< orphan*/  pm_timer; int /*<<< orphan*/  sim; int /*<<< orphan*/  path; scalar_t__ resetting; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  ATA_IRQ_RID ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mvs_channel* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct mvs_channel *ch = FUNC5(dev);

	FUNC7(&ch->mtx);
	FUNC12(AC_LOST_DEVICE, ch->path, NULL);
	/* Forget about reset. */
	if (ch->resetting) {
		ch->resetting = 0;
		FUNC15(ch->sim, TRUE);
	}
	FUNC14(ch->path);
	FUNC13(FUNC4(ch->sim));
	FUNC3(ch->sim, /*free_devq*/TRUE);
	FUNC8(&ch->mtx);

	if (ch->pm_level > 3)
		FUNC2(&ch->pm_timer);
	FUNC2(&ch->reset_timer);
	FUNC1(dev, ch->r_irq, ch->ih);
	FUNC0(dev, SYS_RES_IRQ, ATA_IRQ_RID, ch->r_irq);

	FUNC9(dev);
	FUNC11(dev);
	FUNC10(dev);

	FUNC0(dev, SYS_RES_MEMORY, ch->unit, ch->r_mem);
	FUNC6(&ch->mtx);
	return (0);
}