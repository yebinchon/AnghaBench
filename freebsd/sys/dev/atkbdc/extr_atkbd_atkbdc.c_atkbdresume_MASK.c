#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  kb_flags; } ;
typedef  TYPE_1__ keyboard_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_9__ {int /*<<< orphan*/  intr; } ;
typedef  TYPE_2__ atkbd_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATKBD_DRIVER_NAME ; 
 int /*<<< orphan*/  KB_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,TYPE_1__**,int*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	atkbd_softc_t *sc;
	keyboard_t *kbd;
	int args[2];

	sc = FUNC2(dev);
	kbd = FUNC5(FUNC4(ATKBD_DRIVER_NAME,
						 FUNC3(dev)));
	if (kbd) {
		kbd->kb_flags &= ~KB_INITIALIZED;
		args[0] = FUNC3(FUNC1(dev));
		args[1] = FUNC8(sc->intr);
		FUNC7(kbd, FUNC3(dev), &kbd, args,
		    FUNC0(dev));
		FUNC6(kbd);
	}
	return 0;
}