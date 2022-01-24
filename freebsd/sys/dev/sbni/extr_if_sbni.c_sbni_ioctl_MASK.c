#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct thread {int dummy; } ;
struct sbni_in_stats {size_t rxl; int fixed_rxl; int fixed_rate; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  rate; } ;
struct TYPE_2__ {int /*<<< orphan*/  rate; int /*<<< orphan*/  rxl; } ;
struct sbni_softc {size_t cur_rxl_index; struct sbni_in_stats in_stats; TYPE_1__ csr1; int /*<<< orphan*/  ifp; int /*<<< orphan*/  delta_rxl; } ;
struct sbni_flags {size_t rxl; int fixed_rxl; int fixed_rate; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  rate; } ;
struct ifreq {struct sbni_in_stats ifr_ifru; } ;
struct ifnet {int if_flags; int if_drv_flags; struct sbni_softc* if_softc; } ;
typedef  int /*<<< orphan*/  flags ;
typedef  struct sbni_in_stats* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CSR1 ; 
 int /*<<< orphan*/  DEFAULT_RATE ; 
 size_t DEF_RXL ; 
 int /*<<< orphan*/  DEF_RXL_DELTA ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PRIV_DRIVER ; 
 char PR_RES ; 
 int /*<<< orphan*/  FUNC1 (struct sbni_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbni_softc*) ; 
#define  SIOCADDMULTI 134 
#define  SIOCDELMULTI 133 
#define  SIOCGHWFLAGS 132 
#define  SIOCGINSTATS 131 
#define  SIOCRINSTATS 130 
#define  SIOCSHWFLAGS 129 
#define  SIOCSIFFLAGS 128 
 int /*<<< orphan*/  FUNC3 (struct sbni_in_stats*,struct sbni_in_stats*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sbni_in_stats*,int) ; 
 int FUNC5 (struct sbni_in_stats*,int /*<<< orphan*/ ,int) ; 
 struct thread* curthread ; 
 int FUNC6 (struct ifnet*,int,struct sbni_in_stats*) ; 
 int /*<<< orphan*/  FUNC7 (struct sbni_in_stats*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ifreq*) ; 
 struct sbni_in_stats* FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rxl_tab ; 
 int /*<<< orphan*/  FUNC11 (struct sbni_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct sbni_softc*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC13 (struct sbni_softc*) ; 

__attribute__((used)) static int
FUNC14(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct sbni_softc *sc;
	struct ifreq *ifr;
	struct thread *td;
	struct sbni_in_stats *in_stats;
	struct sbni_flags flags;
	int error;

	sc = ifp->if_softc;
	ifr = (struct ifreq *)data;
	td = curthread;
	error = 0;

	switch (command) {
	case SIOCSIFFLAGS:
		/*
		 * If the interface is marked up and stopped, then start it.
		 * If it is marked down and running, then stop it.
		 */
		FUNC1(sc);
		if (ifp->if_flags & IFF_UP) {
			if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
				FUNC11(sc);
		} else {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
				FUNC13(sc);
			}
		}
		FUNC2(sc);
		break;

	case SIOCADDMULTI:
	case SIOCDELMULTI:
		/*
		 * Multicast list has changed; set the hardware filter
		 * accordingly.
		 */
		error = 0;
		/* if (ifr == NULL)
			error = EAFNOSUPPORT; */
		break;

		/*
		 * SBNI specific ioctl
		 */
	case SIOCGHWFLAGS:	/* get flags */
		FUNC1(sc);
		FUNC3((caddr_t)FUNC0(sc->ifp)+3, (caddr_t) &flags, 3);
		flags.rxl = sc->cur_rxl_index;
		flags.rate = sc->csr1.rate;
		flags.fixed_rxl = (sc->delta_rxl == 0);
		flags.fixed_rate = 1;
		FUNC2(sc);
		FUNC3(&flags, &ifr->ifr_ifru, sizeof(flags));
		break;

	case SIOCGINSTATS:
		in_stats = FUNC9(sizeof(struct sbni_in_stats), M_DEVBUF,
		    M_WAITOK);
		FUNC1(sc);
		FUNC3(&sc->in_stats, in_stats, sizeof(struct sbni_in_stats));
		FUNC2(sc);
		error = FUNC5(in_stats, FUNC8(ifr),
		    sizeof(struct sbni_in_stats));
		FUNC7(in_stats, M_DEVBUF);
		break;

	case SIOCSHWFLAGS:	/* set flags */
		/* root only */
		error = FUNC10(td, PRIV_DRIVER);
		if (error)
			break;
		FUNC3(&ifr->ifr_ifru, &flags, sizeof(flags));
		FUNC1(sc);
		if (flags.fixed_rxl) {
			sc->delta_rxl = 0;
			sc->cur_rxl_index = flags.rxl;
		} else {
			sc->delta_rxl = DEF_RXL_DELTA;
			sc->cur_rxl_index = DEF_RXL;
		}
		sc->csr1.rxl = rxl_tab[sc->cur_rxl_index];
		sc->csr1.rate = flags.fixed_rate ? flags.rate : DEFAULT_RATE;
		if (flags.mac_addr)
			FUNC3((caddr_t) &flags,
			      (caddr_t) FUNC0(sc->ifp)+3, 3);

		/* Don't be afraid... */
		FUNC12(sc, CSR1, *(char*)(&sc->csr1) | PR_RES);
		FUNC2(sc);
		break;

	case SIOCRINSTATS:
		FUNC1(sc);
		if (!(error = FUNC10(td, PRIV_DRIVER)))	/* root only */
			FUNC4(&sc->in_stats, sizeof(struct sbni_in_stats));
		FUNC2(sc);
		break;

	default:
		error = FUNC6(ifp, command, data);
		break;
	}

	return (error);
}