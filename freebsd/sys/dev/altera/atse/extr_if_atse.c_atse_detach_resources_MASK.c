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
struct atse_softc {int /*<<< orphan*/ * atse_mem_res; int /*<<< orphan*/  atse_mem_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct atse_softc* FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(device_t dev)
{
	struct atse_softc *sc;

	sc = FUNC1(dev);

	if (sc->atse_mem_res != NULL) {
		FUNC0(dev, SYS_RES_MEMORY, sc->atse_mem_rid,
		    sc->atse_mem_res);
		sc->atse_mem_res = NULL;
	}
}