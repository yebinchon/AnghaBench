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
struct ifreq {int dummy; } ;
struct ifnet {struct adapter* if_softc; } ;
struct adapter {int /*<<< orphan*/  media; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EIO ; 
#define  SIOCADDMULTI 135 
#define  SIOCDELMULTI 134 
#define  SIOCGIFMEDIA 133 
#define  SIOCGIFXMEDIA 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int FUNC0 (struct ifnet*,unsigned long,scalar_t__) ; 
 int FUNC1 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  t4_trace_lock ; 

__attribute__((used)) static int
FUNC4(struct ifnet *ifp, unsigned long cmd, caddr_t data)
{
	int rc = 0;
	struct adapter *sc;
	struct ifreq *ifr = (struct ifreq *)data;

	switch (cmd) {
	case SIOCSIFMTU:
	case SIOCSIFFLAGS:
	case SIOCADDMULTI:
	case SIOCDELMULTI:
	case SIOCSIFCAP:
		break;
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
	case SIOCGIFXMEDIA:
		FUNC2(&t4_trace_lock);
		sc = ifp->if_softc;
		if (sc == NULL)
			rc = EIO;
		else
			rc = FUNC1(ifp, ifr, &sc->media, cmd);
		FUNC3(&t4_trace_lock);
		break;
	default:
		rc = FUNC0(ifp, cmd, data);
	}

	return (rc);
}