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
struct bxe_softc {scalar_t__ state; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 scalar_t__ BXE_STATE_CLOSED ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  UNLOAD_NORMAL ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*) ; 
 struct bxe_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
    struct bxe_softc *sc;

    sc = FUNC5(dev);

    FUNC0(sc, DBG_LOAD, "Starting shutdown...\n");

    /* stop the periodic callout */
    FUNC4(sc);

    if (sc->state != BXE_STATE_CLOSED) {
    	FUNC1(sc);
    	FUNC3(sc, UNLOAD_NORMAL, FALSE);
    	FUNC2(sc);
    }

    return (0);
}