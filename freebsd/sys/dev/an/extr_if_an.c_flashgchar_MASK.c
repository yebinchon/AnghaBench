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
struct ifnet {struct an_softc* if_softc; } ;
struct an_softc {int /*<<< orphan*/  mpi350; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct an_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct an_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct an_softc*,int) ; 

__attribute__((used)) static int
FUNC4(struct ifnet *ifp, int matchbyte, int dwelltime)
{
	int		rchar;
	unsigned char	rbyte = 0;
	int		success = -1;
	struct an_softc	*sc = ifp->if_softc;


	do {
		rchar = FUNC1(sc, FUNC0(sc->mpi350));

		if (dwelltime && !(0x8000 & rchar)) {
			dwelltime -= 10;
			FUNC3(sc, 10);
			continue;
		}
		rbyte = 0xff & rchar;

		if ((rbyte == matchbyte) && (0x8000 & rchar)) {
			FUNC2(sc, FUNC0(sc->mpi350), 0);
			success = 1;
			break;
		}
		if (rbyte == 0x81 || rbyte == 0x82 || rbyte == 0x83 || rbyte == 0x1a || 0xffff == rchar)
			break;
		FUNC2(sc, FUNC0(sc->mpi350), 0);

	} while (dwelltime > 0);
	return success;
}