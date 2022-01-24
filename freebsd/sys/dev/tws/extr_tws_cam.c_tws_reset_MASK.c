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
struct tws_softc {int /*<<< orphan*/  sim; int /*<<< orphan*/  gen_lock; int /*<<< orphan*/  tws_dev; } ;

/* Variables and functions */
 scalar_t__ TWS_RESET ; 
 int /*<<< orphan*/  TWS_RESET_COMPLETE ; 
 int /*<<< orphan*/  TWS_RESET_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tws_softc*) ; 
 scalar_t__ FUNC4 (struct tws_softc*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct tws_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tws_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

void
FUNC11(void *arg)
{
    struct tws_softc *sc = (struct tws_softc *)arg;

    FUNC1(&sc->gen_lock);
    if ( FUNC4(sc) == TWS_RESET ) {
        FUNC2(&sc->gen_lock);
        return;
    }

    FUNC9(sc->sim, 1);

    FUNC7(sc, TWS_RESET_START);

    FUNC0(sc->tws_dev,  "Resetting controller\n");

    FUNC3(sc);
    FUNC8(sc);
    FUNC6( (void*) sc );
    FUNC5( (void*) sc );

//  device_printf(sc->tws_dev,  "Controller Reset complete!\n");
    FUNC7(sc, TWS_RESET_COMPLETE);
    FUNC2(&sc->gen_lock);

    FUNC10(sc->sim, 1);
}