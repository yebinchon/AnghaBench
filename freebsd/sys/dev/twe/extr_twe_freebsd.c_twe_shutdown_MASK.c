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
struct twe_softc {TYPE_1__* twe_drive; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ td_disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct twe_softc*) ; 
 int TWE_MAX_UNITS ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct twe_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct twe_softc*) ; 
 int FUNC7 (struct twe_softc*,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
    struct twe_softc	*sc = FUNC5(dev);
    int			i, error = 0;

    FUNC4(4);

    /* 
     * Delete all our child devices.
     */
    FUNC0(sc);
    for (i = 0; i < TWE_MAX_UNITS; i++) {
	if (sc->twe_drive[i].td_disk != 0) {
	    if ((error = FUNC7(sc, i)) != 0) {
		FUNC1(sc);
		return (error);
	    }
	}
    }
    FUNC1(sc);

    /*
     * Bring the controller down.
     */
    FUNC2(sc);
    FUNC6(sc);
    FUNC3(sc);

    return(0);
}