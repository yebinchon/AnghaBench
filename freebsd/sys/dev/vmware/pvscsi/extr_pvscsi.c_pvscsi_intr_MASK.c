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
struct pvscsi_softc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static void
FUNC4(void *xsc)
{
	struct pvscsi_softc *sc;

	sc = xsc;

	FUNC0(&sc->lock, MA_NOTOWNED);

	FUNC1(&sc->lock);
	FUNC3(xsc);
	FUNC2(&sc->lock);
}