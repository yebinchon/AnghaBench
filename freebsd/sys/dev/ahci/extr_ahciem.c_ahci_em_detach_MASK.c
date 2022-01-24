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
struct ahci_enclosure {int channels; int /*<<< orphan*/  mtx; scalar_t__ r_memr; scalar_t__ r_memt; scalar_t__ r_memc; int /*<<< orphan*/  sim; int /*<<< orphan*/  path; TYPE_1__* leds; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ led; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int AHCI_NUM_LEDS ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ahci_enclosure* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct ahci_enclosure *enc = FUNC3(dev);
	int i;

	for (i = 0; i < enc->channels * AHCI_NUM_LEDS; i++) {
		if (enc->leds[i].led)
			FUNC4(enc->leds[i].led);
	}
	FUNC6(&enc->mtx);
	FUNC8(AC_LOST_DEVICE, enc->path, NULL);
	FUNC10(enc->path);
	FUNC9(FUNC2(enc->sim));
	FUNC1(enc->sim, /*free_devq*/TRUE);
	FUNC7(&enc->mtx);

	FUNC0(dev, SYS_RES_MEMORY, 0, enc->r_memc);
	FUNC0(dev, SYS_RES_MEMORY, 1, enc->r_memt);
	if (enc->r_memr)
		FUNC0(dev, SYS_RES_MEMORY, 2, enc->r_memr);
	FUNC5(&enc->mtx);
	return (0);
}