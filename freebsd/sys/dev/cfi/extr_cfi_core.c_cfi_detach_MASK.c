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
struct cfi_softc {int /*<<< orphan*/  sc_res; int /*<<< orphan*/  sc_rid; int /*<<< orphan*/  sc_region; int /*<<< orphan*/  sc_nod; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cfi_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(device_t dev)
{
	struct cfi_softc *sc;

	sc = FUNC2(dev);

	FUNC1(sc->sc_nod);
	FUNC3(sc->sc_region, M_TEMP);
	FUNC0(dev, SYS_RES_MEMORY, sc->sc_rid, sc->sc_res);
	return (0);
}