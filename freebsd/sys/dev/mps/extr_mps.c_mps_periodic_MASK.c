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
typedef  int uint32_t ;
struct mps_softc {int mps_flags; int /*<<< orphan*/  periodic; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPI2_DOORBELL_OFFSET ; 
 int MPI2_IOC_STATE_FAULT ; 
 int MPI2_IOC_STATE_MASK ; 
 int /*<<< orphan*/  MPS_FAULT ; 
 int MPS_FLAGS_SHUTDOWN ; 
 int MPS_PERIODIC_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void (*) (void*),struct mps_softc*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (struct mps_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct mps_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mps_softc*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct mps_softc *sc;
	uint32_t db;

	sc = (struct mps_softc *)arg;
	if (sc->mps_flags & MPS_FLAGS_SHUTDOWN)
		return;

	db = FUNC2(sc, MPI2_DOORBELL_OFFSET);
	if ((db & MPI2_IOC_STATE_MASK) == MPI2_IOC_STATE_FAULT) {
		FUNC1(sc, MPS_FAULT, "IOC Fault 0x%08x, Resetting\n", db);
		FUNC3(sc);
	}

	FUNC0(&sc->periodic, MPS_PERIODIC_DELAY * hz, mps_periodic, sc);
}