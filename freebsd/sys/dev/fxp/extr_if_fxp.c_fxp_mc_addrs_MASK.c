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
struct fxp_softc {int /*<<< orphan*/  ifp; struct fxp_cb_mcs* mcsp; } ;
struct fxp_cb_mcs {int mc_cnt; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int ETHER_ADDR_LEN ; 
 int IFF_ALLMULTI ; 
 int MAXMCADDR ; 
 int /*<<< orphan*/  fxp_setup_maddr ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fxp_softc*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct fxp_softc *sc)
{
	struct fxp_cb_mcs *mcsp = sc->mcsp;
	if_t ifp = sc->ifp;

	if ((FUNC2(ifp) & IFF_ALLMULTI) == 0) {
		mcsp->mc_cnt = 0;
		FUNC1(sc->ifp, fxp_setup_maddr, sc);
		if (mcsp->mc_cnt >= MAXMCADDR) {
			FUNC3(ifp, IFF_ALLMULTI, 0);
			mcsp->mc_cnt = 0;
		}
	}
	mcsp->mc_cnt = FUNC0(mcsp->mc_cnt * ETHER_ADDR_LEN);
}