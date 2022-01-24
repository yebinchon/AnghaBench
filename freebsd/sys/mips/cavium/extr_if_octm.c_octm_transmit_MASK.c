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
struct octm_softc {int /*<<< orphan*/  sc_port; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; struct octm_softc* if_softc; } ;
typedef  int cvmx_mgmt_port_result_t ;

/* Variables and functions */
#define  CVMX_MGMT_PORT_INIT_ERROR 131 
#define  CVMX_MGMT_PORT_INVALID_PARAM 130 
#define  CVMX_MGMT_PORT_NO_MEMORY 129 
#define  CVMX_MGMT_PORT_SUCCESS 128 
 int EDOOFUS ; 
 int EIO ; 
 int ENOBUFS ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  IFCOUNTER_OBYTES ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int FUNC1 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC4(struct ifnet *ifp, struct mbuf *m)
{
	struct octm_softc *sc;
	cvmx_mgmt_port_result_t result;

	sc = ifp->if_softc;

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING) {
		FUNC3(m);
		return (0);
	}

	result = FUNC1(sc->sc_port, m);

	if (result == CVMX_MGMT_PORT_SUCCESS) {
		FUNC0(ifp, m);

		FUNC2(ifp, IFCOUNTER_OPACKETS, 1);
		FUNC2(ifp, IFCOUNTER_OBYTES, m->m_pkthdr.len);
	} else
		FUNC2(ifp, IFCOUNTER_OERRORS, 1);

	FUNC3(m);

	switch (result) {
	case CVMX_MGMT_PORT_SUCCESS:
		return (0);
	case CVMX_MGMT_PORT_NO_MEMORY:
		return (ENOBUFS);
	case CVMX_MGMT_PORT_INVALID_PARAM:
		return (ENXIO);
	case CVMX_MGMT_PORT_INIT_ERROR:
		return (EIO);
	default:
		return (EDOOFUS);
	}
}