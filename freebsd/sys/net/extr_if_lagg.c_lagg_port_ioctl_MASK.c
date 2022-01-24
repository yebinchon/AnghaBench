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
typedef  int /*<<< orphan*/  u_long ;
struct lagg_softc {int /*<<< orphan*/  sc_ifp; } ;
struct lagg_reqport {char* rp_portname; } ;
struct lagg_port {int (* lp_ioctl ) (struct ifnet*,int /*<<< orphan*/ ,scalar_t__) ;struct lagg_softc* lp_softc; } ;
struct ifnet {scalar_t__ if_type; struct lagg_port* if_lagg; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ IFT_IEEE8023ADLAG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct lagg_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct lagg_softc*) ; 
#define  SIOCGLAGGPORT 130 
#define  SIOCSIFCAP 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct lagg_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct lagg_port*,struct lagg_reqport*) ; 
 int FUNC8 (struct ifnet*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (struct ifnet*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC10(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct lagg_reqport *rp = (struct lagg_reqport *)data;
	struct lagg_softc *sc;
	struct lagg_port *lp = NULL;
	int error = 0;

	/* Should be checked by the caller */
	if (ifp->if_type != IFT_IEEE8023ADLAG ||
	    (lp = ifp->if_lagg) == NULL || (sc = lp->lp_softc) == NULL)
		goto fallback;

	switch (cmd) {
	case SIOCGLAGGPORT:
		if (rp->rp_portname[0] == '\0' ||
		    FUNC5(rp->rp_portname) != ifp) {
			error = EINVAL;
			break;
		}

		FUNC0();
		if ((lp = ifp->if_lagg) == NULL || lp->lp_softc != sc) {
			error = ENOENT;
			FUNC1();
			break;
		}

		FUNC7(lp, rp);
		FUNC1();
		break;

	case SIOCSIFCAP:
		if (lp->lp_ioctl == NULL) {
			error = EINVAL;
			break;
		}
		error = (*lp->lp_ioctl)(ifp, cmd, data);
		if (error)
			break;

		/* Update lagg interface capabilities */
		FUNC2(sc);
		FUNC6(sc);
		FUNC3(sc);
		FUNC4(sc->sc_ifp);
		break;

	case SIOCSIFMTU:
		/* Do not allow the MTU to be changed once joined */
		error = EINVAL;
		break;

	default:
		goto fallback;
	}

	return (error);

fallback:
	if (lp != NULL && lp->lp_ioctl != NULL)
		return ((*lp->lp_ioctl)(ifp, cmd, data));

	return (EINVAL);
}