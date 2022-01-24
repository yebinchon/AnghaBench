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
struct dc_softc {int /*<<< orphan*/ * dc_srom; int /*<<< orphan*/  dc_dev; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct dc_softc *sc, int bits)
{
	int size;

	size = FUNC0(bits);
	sc->dc_srom = FUNC3(size, M_DEVBUF, M_NOWAIT | M_ZERO);
	if (sc->dc_srom == NULL) {
		FUNC2(sc->dc_dev, "Could not allocate SROM buffer\n");
		return (ENOMEM);
	}
	FUNC1(sc, (caddr_t)sc->dc_srom, 0, (size / 2), 0);
	return (0);
}