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
struct emu_midi_softc {int /*<<< orphan*/  mtx; int /*<<< orphan*/  ihandle; int /*<<< orphan*/  card; int /*<<< orphan*/  mpu; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct emu_midi_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct emu_midi_softc *scp;

	scp = FUNC0(dev);
	FUNC2(scp->mpu);
	FUNC1(scp->card, scp->ihandle);
	FUNC3(&scp->mtx);
	return (0);
}