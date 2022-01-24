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
struct vpd_softc {int /*<<< orphan*/  ctx; scalar_t__ res; int /*<<< orphan*/  rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct vpd_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3 (device_t dev)
{
	struct vpd_softc *sc;

	sc = FUNC1(dev);

	if (sc->res)
		FUNC0(dev, SYS_RES_MEMORY, sc->rid, sc->res);

	FUNC2(&sc->ctx);

	return (0);
}