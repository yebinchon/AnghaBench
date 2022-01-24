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
struct vscsi_softc {int /*<<< orphan*/  io_lock; int /*<<< orphan*/ * devq; int /*<<< orphan*/ * sim; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vscsi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct vscsi_softc *sc;

	sc = FUNC3(dev);
	if (sc == NULL)
		return (EINVAL);

	if (sc->sim != NULL) {
		FUNC5(&sc->io_lock);
		FUNC7(FUNC1(sc->sim));
		FUNC0(sc->sim, FALSE);
		sc->sim = NULL;
		FUNC6(&sc->io_lock);
	}

	if (sc->devq != NULL) {
		FUNC2(sc->devq);
		sc->devq = NULL;
	}
	
	FUNC4(&sc->io_lock);

	return (0);
}