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
struct an_softc {int /*<<< orphan*/  mpi350; int /*<<< orphan*/  an_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  AN_ALLOC_FID ; 
 int /*<<< orphan*/  AN_BAP0 ; 
 int /*<<< orphan*/  AN_CMD_ALLOC_MEM ; 
 int /*<<< orphan*/  AN_DATA0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int AN_EV_ALLOC ; 
 int AN_TIMEOUT ; 
 int FUNC2 (struct an_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct an_softc*,int /*<<< orphan*/ ,int) ; 
 int EIO ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC4 (struct an_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct an_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC7(struct an_softc *sc, int len, int *id)
{
	int			i;

	if (FUNC4(sc, AN_CMD_ALLOC_MEM, len)) {
		FUNC6(sc->an_ifp, "failed to allocate %d bytes on NIC\n",
		    len);
		return(ENOMEM);
	}

	for (i = 0; i < AN_TIMEOUT; i++) {
		if (FUNC2(sc, FUNC1(sc->mpi350)) & AN_EV_ALLOC)
			break;
	}

	if (i == AN_TIMEOUT)
		return(ETIMEDOUT);

	FUNC3(sc, FUNC0(sc->mpi350), AN_EV_ALLOC);
	*id = FUNC2(sc, AN_ALLOC_FID);

	if (FUNC5(sc, *id, 0, AN_BAP0))
		return(EIO);

	for (i = 0; i < len / 2; i++)
		FUNC3(sc, AN_DATA0, 0);

	return(0);
}