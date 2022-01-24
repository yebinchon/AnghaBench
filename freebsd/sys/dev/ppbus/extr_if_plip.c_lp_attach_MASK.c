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
typedef  int /*<<< orphan*/  u_int32_t ;
struct lp_data {int /*<<< orphan*/ * res_irq; int /*<<< orphan*/  sc_intr_cookie; struct ifnet* sc_ifp; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifq_maxlen; } ;
struct ifnet {int if_flags; TYPE_1__ if_snd; scalar_t__ if_addrlen; scalar_t__ if_hdrlen; int /*<<< orphan*/  if_output; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_mtu; struct lp_data* if_softc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct lp_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DLT_NULL ; 
 int ENOSPC ; 
 int ENXIO ; 
 int IFF_MULTICAST ; 
 int IFF_POINTOPOINT ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  IFT_PARA ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  LPMTU ; 
 int /*<<< orphan*/  RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct lp_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 struct ifnet* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  lp_intr ; 
 int /*<<< orphan*/  lpioctl ; 
 int /*<<< orphan*/  lpoutput ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct lp_data *lp = FUNC0(dev);
	struct ifnet *ifp;
	int error, rid = 0;

	lp->sc_dev = dev;

	/*
	 * Reserve the interrupt resource.  If we don't have one, the
	 * attach fails.
	 */
	lp->res_irq = FUNC3(dev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE);
	if (lp->res_irq == NULL) {
		FUNC8(dev, "cannot reserve interrupt, failed.\n");
		return (ENXIO);
	}

	ifp = lp->sc_ifp = FUNC9(IFT_PARA);
	if (ifp == NULL) {
		return (ENOSPC);
	}

	ifp->if_softc = lp;
	FUNC12(ifp, FUNC6(dev), FUNC7(dev));
	ifp->if_mtu = LPMTU;
	ifp->if_flags = IFF_SIMPLEX | IFF_POINTOPOINT | IFF_MULTICAST;
	ifp->if_ioctl = lpioctl;
	ifp->if_output = lpoutput;
	ifp->if_hdrlen = 0;
	ifp->if_addrlen = 0;
	ifp->if_snd.ifq_maxlen = ifqmaxlen;
	FUNC10(ifp);

	FUNC1(ifp, DLT_NULL, sizeof(u_int32_t));

	/*
	 * Attach our interrupt handler.  It is only called while we
	 * own the ppbus.
	 */
	error = FUNC5(dev, lp->res_irq, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, lp_intr, lp, &lp->sc_intr_cookie);
	if (error) {
		FUNC2(ifp);
		FUNC11(ifp);
		FUNC4(dev, SYS_RES_IRQ, 0, lp->res_irq);
		FUNC8(dev, "Unable to register interrupt handler\n");
		return (error);
	}

	return (0);
}