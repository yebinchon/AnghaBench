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
typedef  scalar_t__ uint8_t ;
struct mrsas_softc {int fast_path_io; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mrsas_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mrsas_softc*) ; 

__attribute__((used)) static int
FUNC2(struct mrsas_softc *sc)
{
	uint8_t retcode = 0;

	sc->fast_path_io = 0;
	if (!FUNC1(sc)) {
		retcode = FUNC0(sc);
		if (retcode == 0) {
			sc->fast_path_io = 1;
			return 0;
		}
	}
	return 1;
}