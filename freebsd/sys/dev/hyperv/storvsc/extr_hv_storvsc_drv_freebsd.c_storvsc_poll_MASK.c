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
struct storvsc_softc {int /*<<< orphan*/  hs_lock; int /*<<< orphan*/  hs_chan; } ;
struct cam_sim {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 struct storvsc_softc* FUNC0 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct storvsc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct cam_sim *sim)
{
	struct storvsc_softc *sc = FUNC0(sim);

	FUNC2(&sc->hs_lock, MA_OWNED);
	FUNC4(&sc->hs_lock);
	FUNC1(sc->hs_chan, sc);
	FUNC3(&sc->hs_lock);
}