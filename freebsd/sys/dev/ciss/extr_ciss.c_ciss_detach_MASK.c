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
struct ciss_softc {int ciss_flags; int /*<<< orphan*/  ciss_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CISS_FLAG_CONTROL_OPEN ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct ciss_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ciss_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct ciss_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
    struct ciss_softc	*sc = FUNC3(dev);

    FUNC2(1);

    FUNC4(&sc->ciss_mtx);
    if (sc->ciss_flags & CISS_FLAG_CONTROL_OPEN) {
	FUNC5(&sc->ciss_mtx);
	return (EBUSY);
    }

    /* flush adapter cache */
    FUNC0(sc);

    /* release all resources.  The mutex is released and freed here too. */
    FUNC1(sc);

    return(0);
}