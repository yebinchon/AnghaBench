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
struct siis_channel {int /*<<< orphan*/  mtx; int /*<<< orphan*/  r_mem; int /*<<< orphan*/  unit; int /*<<< orphan*/  r_irq; int /*<<< orphan*/  ih; int /*<<< orphan*/  sim; int /*<<< orphan*/  path; int /*<<< orphan*/  led; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  ATA_IRQ_RID ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct siis_channel* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct siis_channel *ch = FUNC4(dev);

	FUNC5(ch->led);
	FUNC7(&ch->mtx);
	FUNC12(AC_LOST_DEVICE, ch->path, NULL);
	FUNC14(ch->path);
	FUNC13(FUNC3(ch->sim));
	FUNC2(ch->sim, /*free_devq*/TRUE);
	FUNC8(&ch->mtx);

	FUNC1(dev, ch->r_irq, ch->ih);
	FUNC0(dev, SYS_RES_IRQ, ATA_IRQ_RID, ch->r_irq);

	FUNC9(dev);
	FUNC11(dev);
	FUNC10(dev);

	FUNC0(dev, SYS_RES_MEMORY, ch->unit, ch->r_mem);
	FUNC6(&ch->mtx);
	return (0);
}