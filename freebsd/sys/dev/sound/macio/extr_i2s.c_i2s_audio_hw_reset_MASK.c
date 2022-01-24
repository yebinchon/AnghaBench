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
struct i2s_softc {int dummy; } ;

/* Variables and functions */
 size_t AUDIO_HW_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  RESET_HOLD_TIME ; 
 int /*<<< orphan*/  RESET_RELEASE_TIME ; 
 int /*<<< orphan*/  RESET_SETUP_TIME ; 
 scalar_t__* gpio_ctrls ; 
 int /*<<< orphan*/  FUNC2 (size_t,int) ; 
 int reset_active ; 

__attribute__((used)) static void
FUNC3(struct i2s_softc *sc)
{
	if (gpio_ctrls[AUDIO_HW_RESET]) {
		FUNC1(("resetting codec\n"));

		FUNC2(AUDIO_HW_RESET, !reset_active);   /* Negate RESET */
		FUNC0(RESET_SETUP_TIME);

		FUNC2(AUDIO_HW_RESET, reset_active);    /* Assert RESET */
		FUNC0(RESET_HOLD_TIME);

		FUNC2(AUDIO_HW_RESET, !reset_active);   /* Negate RESET */
		FUNC0(RESET_RELEASE_TIME);
	
	} else {
		FUNC1(("no audio_hw_reset\n"));
	}
}