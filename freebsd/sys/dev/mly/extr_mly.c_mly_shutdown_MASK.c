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
struct mly_softc {int mly_state; int /*<<< orphan*/  mly_timeout; int /*<<< orphan*/  mly_periodic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mly_softc*) ; 
 int MLY_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC2 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct mly_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct mly_softc*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
    struct mly_softc	*sc = FUNC5(dev);

    FUNC4(1);

    FUNC0(sc);
    if (sc->mly_state & MLY_STATE_OPEN) {
	FUNC2(sc);
	return(EBUSY);
    }

    /* kill the periodic event */
    FUNC3(&sc->mly_periodic);
#ifdef MLY_DEBUG
    callout_stop(&sc->mly_timeout);
#endif

    /* flush controller */
    FUNC7(sc, "flushing cache...");
    FUNC8("%s\n", FUNC6(sc) ? "failed" : "done");

    FUNC1(sc);
    FUNC2(sc);

    return(0);
}