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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int u_char ;
struct sbni_softc {int cur_rxl_index; scalar_t__ delta_rxl; int /*<<< orphan*/  enaddr; int /*<<< orphan*/  lock; int /*<<< orphan*/  wch; struct ifnet* ifp; } ;
struct sbni_flags {int rate; } ;
struct ifnet {int if_baudrate; int if_flags; int /*<<< orphan*/  if_xname; int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_init; struct sbni_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR0 ; 
 int ENOMEM ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (struct sbni_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sbni_init ; 
 int /*<<< orphan*/  sbni_ioctl ; 
 int /*<<< orphan*/  FUNC9 (struct sbni_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sbni_start ; 
 int /*<<< orphan*/  FUNC10 (struct sbni_softc*,struct sbni_flags) ; 

int
FUNC11(struct sbni_softc *sc, int unit, struct sbni_flags flags)
{
	struct ifnet *ifp;
	u_char csr0;
   
	ifp = sc->ifp = FUNC3(IFT_ETHER);
	if (ifp == NULL)
		return (ENOMEM);
	FUNC9(sc, CSR0, 0);
	FUNC10(sc, flags);

	/* Initialize ifnet structure */
	ifp->if_softc	= sc;
	FUNC4(ifp, "sbni", unit);
	ifp->if_init	= sbni_init;
	ifp->if_start	= sbni_start;
	ifp->if_ioctl	= sbni_ioctl;
	FUNC0(&ifp->if_snd, ifqmaxlen);

	/* report real baud rate */
	csr0 = FUNC8(sc, CSR0);
	ifp->if_baudrate =
		(csr0 & 0x01 ? 500000 : 2000000) / (1 << flags.rate);

	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;

	FUNC6(&sc->lock, ifp->if_xname, MTX_NETWORK_LOCK, MTX_DEF);
	FUNC1(&sc->wch, &sc->lock, 0);
	FUNC2(ifp, sc->enaddr);
	/* device attach does transition from UNCONFIGURED to IDLE state */

	FUNC5(ifp, "speed %ju, rxl ", (uintmax_t)ifp->if_baudrate);
	if (sc->delta_rxl)
		FUNC7("auto\n");
	else
		FUNC7("%d (fixed)\n", sc->cur_rxl_index);
	return (0);
}