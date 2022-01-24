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
struct twe_softc {int twe_state; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct twe_softc*) ; 
 int TWE_STATE_DETACHING ; 
 int TWE_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct twe_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct twe_softc*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
    struct twe_softc	*sc = FUNC3(dev);

    FUNC2(4);

    FUNC0(sc);
    if (sc->twe_state & TWE_STATE_OPEN) {
	FUNC1(sc);
	return (EBUSY);
    }
    sc->twe_state |= TWE_STATE_DETACHING;
    FUNC1(sc);

    /*	
     * Shut the controller down.
     */
    if (FUNC5(dev)) {
	FUNC0(sc);
	sc->twe_state &= ~TWE_STATE_DETACHING;
	FUNC1(sc);
	return (EBUSY);
    }

    FUNC4(sc);

    return(0);
}