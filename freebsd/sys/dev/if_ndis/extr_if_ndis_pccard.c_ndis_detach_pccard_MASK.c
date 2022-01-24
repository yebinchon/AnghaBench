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
struct ndis_softc {int /*<<< orphan*/  ndis_rl; int /*<<< orphan*/ * ndis_res_am; int /*<<< orphan*/  ndis_am_rid; int /*<<< orphan*/  ndis_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ndis_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct ndis_softc *sc = FUNC1(dev);

	(void) FUNC2(dev);

	if (sc->ndis_res_am != NULL)
		FUNC0(sc->ndis_dev, SYS_RES_MEMORY,
		    sc->ndis_am_rid, sc->ndis_res_am);
	FUNC3(&sc->ndis_rl);

	return (0);
}