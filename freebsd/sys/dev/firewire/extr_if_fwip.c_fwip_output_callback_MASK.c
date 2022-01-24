#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * ifq_head; } ;
struct ifnet {TYPE_1__ if_snd; } ;
struct TYPE_4__ {struct ifnet* fwip_ifp; } ;
struct fwip_softc {int /*<<< orphan*/  xferlist; TYPE_2__ fw_softc; } ;
struct fw_xfer {scalar_t__ resp; int /*<<< orphan*/  mbuf; scalar_t__ sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fwip_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fwip_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct fw_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(struct fw_xfer *xfer)
{
	struct fwip_softc *fwip;
	struct ifnet *ifp;
	int s;

	fwip = (struct fwip_softc *)xfer->sc;
	ifp = fwip->fw_softc.fwip_ifp;
	/* XXX error check */
	FUNC0(ifp, "resp = %d\n", xfer->resp);
	if (xfer->resp != 0)
		FUNC6(ifp, IFCOUNTER_OERRORS, 1);
	FUNC7(xfer->mbuf);
	FUNC4(xfer);

	s = FUNC8();
	FUNC1(fwip);
	FUNC3(&fwip->xferlist, xfer, link);
	FUNC2(fwip);
	FUNC9(s);

	/* for queue full */
	if (ifp->if_snd.ifq_head != NULL) {
		FUNC5(ifp);
	}
}