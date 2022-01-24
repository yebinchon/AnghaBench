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
struct agp_amd64_softc {TYPE_1__* gatt; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int ag_physical; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP3_VIA_ATTBASE ; 
 int /*<<< orphan*/  AGP3_VIA_GARTCTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct agp_amd64_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct agp_amd64_softc *sc = FUNC1(dev);

	FUNC0(dev);
	FUNC3(0, 1, 0, AGP3_VIA_ATTBASE, sc->gatt->ag_physical, 4);
	FUNC3(0, 1, 0, AGP3_VIA_GARTCTRL,
	    FUNC2(0, 1, 0, AGP3_VIA_ATTBASE, 4) | 0x180, 4);
}