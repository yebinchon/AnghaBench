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
struct tsec_softc {struct ifnet* tsec_ifp; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int /*<<< orphan*/  FUNC0 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct tsec_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int**) ; 
 int /*<<< orphan*/  tsec_hash_maddr ; 

__attribute__((used)) static void
FUNC4(struct tsec_softc *sc)
{
	uint32_t hashtable[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
	struct ifnet *ifp = sc->tsec_ifp;
	int i;

	FUNC0(sc);

	if (ifp->if_flags & IFF_ALLMULTI) {
		for (i = 0; i < 8; i++)
			FUNC2(sc, FUNC1(i), 0xFFFFFFFF);

		return;
	}

	FUNC3(ifp, tsec_hash_maddr, &hashtable);

	for (i = 0; i < 8; i++)
		FUNC2(sc, FUNC1(i), hashtable[i]);
}