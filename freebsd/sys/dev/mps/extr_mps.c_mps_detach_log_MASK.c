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
struct mps_softc {int /*<<< orphan*/ * mps_log_eh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mps_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(struct mps_softc *sc)
{

	if (sc->mps_log_eh != NULL)
		FUNC0(sc, sc->mps_log_eh);
	return (0);
}