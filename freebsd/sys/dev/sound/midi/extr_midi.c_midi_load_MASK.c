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

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIDI_DEV_MIDICTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  midi_devs ; 
 int /*<<< orphan*/  midistat_cdevsw ; 
 int /*<<< orphan*/  midistat_dev ; 
 int /*<<< orphan*/  midistat_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC4(void)
{
	FUNC3(&midistat_lock, "midistat lock");
	FUNC1(&midi_devs);

	midistat_dev = FUNC2(&midistat_cdevsw,
	    FUNC0(0, MIDI_DEV_MIDICTL, 0),
	    UID_ROOT, GID_WHEEL, 0666, "midistat");

	return 0;
}