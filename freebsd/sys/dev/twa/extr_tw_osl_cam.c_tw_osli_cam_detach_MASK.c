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
struct twa_softc {int /*<<< orphan*/  sim_lock; scalar_t__ sim; scalar_t__ path; } ;
typedef  int /*<<< orphan*/  TW_VOID ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct twa_softc*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

TW_VOID
FUNC7(struct twa_softc *sc)
{
	FUNC4(3, sc, "entered");

	FUNC3(sc->sim_lock);
           
	if (sc->path)
		FUNC6(sc->path);
	if (sc->sim) {
		FUNC5(FUNC1(sc->sim));
		/* Passing TRUE to cam_sim_free will free the devq as well. */
		FUNC0(sc->sim, TRUE);
	}
	/* It's ok have 1 hold count while destroying the mutex */
	FUNC2(sc->sim_lock);
}