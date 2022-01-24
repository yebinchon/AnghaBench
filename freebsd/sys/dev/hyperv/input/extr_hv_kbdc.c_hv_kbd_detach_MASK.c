#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * hs_xact_ctx; } ;
typedef  TYPE_1__ hv_kbd_sc ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	int ret;
	hv_kbd_sc *sc = FUNC0(dev);
	FUNC4(sc);
	if (sc->hs_xact_ctx != NULL)
		FUNC5(sc->hs_xact_ctx);
	ret = FUNC2(dev);
	if (!ret)
		FUNC1(dev, "Fail to detach\n");
	return FUNC3(dev);
}