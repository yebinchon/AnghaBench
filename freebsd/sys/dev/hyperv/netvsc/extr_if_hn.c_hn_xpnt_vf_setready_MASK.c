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
struct ifreq {scalar_t__ ifr_mtu; int /*<<< orphan*/  ifr_name; int /*<<< orphan*/  ifr_reqcap; } ;
struct ifnet {scalar_t__ if_hw_tsomax; scalar_t__ if_hw_tsomaxsegcount; scalar_t__ if_hw_tsomaxsegsize; scalar_t__ if_mtu; int (* if_ioctl ) (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  if_xname; int /*<<< orphan*/  if_capenable; int /*<<< orphan*/  if_capabilities; } ;
struct hn_softc {scalar_t__ hn_saved_tsomax; scalar_t__ hn_saved_tsosegcnt; scalar_t__ hn_saved_tsosegsz; int /*<<< orphan*/  hn_saved_caps; scalar_t__ hn_vf_rdytick; struct ifnet* hn_vf_ifp; struct ifnet* hn_ifp; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ ETHERMTU ; 
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 int /*<<< orphan*/  SIOCSIFMTU ; 
 int /*<<< orphan*/  FUNC1 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct hn_softc*,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct hn_softc *sc)
{
	struct ifnet *ifp, *vf_ifp;
	struct ifreq ifr;

	FUNC0(sc);
	ifp = sc->hn_ifp;
	vf_ifp = sc->hn_vf_ifp;

	/*
	 * Mark the VF ready.
	 */
	sc->hn_vf_rdytick = 0;

	/*
	 * Save information for restoration.
	 */
	sc->hn_saved_caps = ifp->if_capabilities;
	sc->hn_saved_tsomax = ifp->if_hw_tsomax;
	sc->hn_saved_tsosegcnt = ifp->if_hw_tsomaxsegcount;
	sc->hn_saved_tsosegsz = ifp->if_hw_tsomaxsegsize;

	/*
	 * Intersect supported/enabled capabilities.
	 *
	 * NOTE:
	 * if_hwassist is not changed here.
	 */
	ifp->if_capabilities &= vf_ifp->if_capabilities;
	ifp->if_capenable &= ifp->if_capabilities;

	/*
	 * Fix TSO settings.
	 */
	if (ifp->if_hw_tsomax > vf_ifp->if_hw_tsomax)
		ifp->if_hw_tsomax = vf_ifp->if_hw_tsomax;
	if (ifp->if_hw_tsomaxsegcount > vf_ifp->if_hw_tsomaxsegcount)
		ifp->if_hw_tsomaxsegcount = vf_ifp->if_hw_tsomaxsegcount;
	if (ifp->if_hw_tsomaxsegsize > vf_ifp->if_hw_tsomaxsegsize)
		ifp->if_hw_tsomaxsegsize = vf_ifp->if_hw_tsomaxsegsize;

	/*
	 * Change VF's enabled capabilities.
	 */
	FUNC4(&ifr, 0, sizeof(ifr));
	FUNC5(ifr.ifr_name, vf_ifp->if_xname, sizeof(ifr.ifr_name));
	ifr.ifr_reqcap = ifp->if_capenable;
	FUNC2(sc, &ifr);

	if (ifp->if_mtu != ETHERMTU) {
		int error;

		/*
		 * Change VF's MTU.
		 */
		FUNC4(&ifr, 0, sizeof(ifr));
		FUNC5(ifr.ifr_name, vf_ifp->if_xname, sizeof(ifr.ifr_name));
		ifr.ifr_mtu = ifp->if_mtu;
		error = vf_ifp->if_ioctl(vf_ifp, SIOCSIFMTU, (caddr_t)&ifr);
		if (error) {
			FUNC3(ifp, "%s SIOCSIFMTU %u failed\n",
			    vf_ifp->if_xname, ifp->if_mtu);
			if (ifp->if_mtu > ETHERMTU) {
				FUNC3(ifp, "change MTU to %d\n", ETHERMTU);

				/*
				 * XXX
				 * No need to adjust the synthetic parts' MTU;
				 * failure of the adjustment will cause us
				 * infinite headache.
				 */
				ifp->if_mtu = ETHERMTU;
				FUNC1(sc);
			}
		}
	}
}