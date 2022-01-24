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
struct xae_softc {int* macaddr; struct ifnet* ifp; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int FFC_PM ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int FUNC0 (struct xae_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xae_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xae_softc*) ; 
 int /*<<< orphan*/  XAE_FFC ; 
 int /*<<< orphan*/  XAE_UAW0 ; 
 int /*<<< orphan*/  XAE_UAW1 ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,struct xae_softc*) ; 
 int /*<<< orphan*/  xae_write_maddr ; 

__attribute__((used)) static void
FUNC4(struct xae_softc *sc)
{
	struct ifnet *ifp;
	uint32_t reg;

	FUNC2(sc);

	ifp = sc->ifp;

	/*
	 * Set the multicast (group) filter hash.
	 */
	if ((ifp->if_flags & (IFF_ALLMULTI | IFF_PROMISC)) != 0) {
		reg = FUNC0(sc, XAE_FFC);
		reg |= FFC_PM;
		FUNC1(sc, XAE_FFC, reg);
	} else {
		reg = FUNC0(sc, XAE_FFC);
		reg &= ~FFC_PM;
		FUNC1(sc, XAE_FFC, reg);

		FUNC3(ifp, xae_write_maddr, sc);
	}

	/*
	 * Set the primary address.
	 */
	reg = sc->macaddr[0];
	reg |= (sc->macaddr[1] << 8);
	reg |= (sc->macaddr[2] << 16);
	reg |= (sc->macaddr[3] << 24);
	FUNC1(sc, XAE_UAW0, reg);

	reg = sc->macaddr[4];
	reg |= (sc->macaddr[5] << 8);
	FUNC1(sc, XAE_UAW1, reg);
}