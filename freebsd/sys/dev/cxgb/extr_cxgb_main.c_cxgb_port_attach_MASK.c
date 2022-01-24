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
struct port_info {int port_id; int /*<<< orphan*/  media; int /*<<< orphan*/  hw_addr; struct ifnet* ifp; int /*<<< orphan*/  link_check_task; int /*<<< orphan*/  link_check_ch; int /*<<< orphan*/  lockbuf; struct adapter* adapter; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_hwassist; int /*<<< orphan*/  if_mtu; int /*<<< orphan*/  if_get_counter; int /*<<< orphan*/  if_qflush; int /*<<< orphan*/  if_transmit; int /*<<< orphan*/  if_ioctl; struct port_info* if_softc; int /*<<< orphan*/  if_init; } ;
struct TYPE_2__ {int nports; } ;
struct adapter {TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_TCP_IPV6 ; 
 int CSUM_TSO ; 
 int CSUM_UDP ; 
 int CSUM_UDP_IPV6 ; 
 int CXGB_CAP ; 
 int CXGB_CAP_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETHERMTU_JUMBO ; 
 int IFCAP_TOE4 ; 
 int IFCAP_TSO ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  IFM_IMASK ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  FUNC1 (struct port_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_NAME_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct port_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  check_link_status ; 
 int /*<<< orphan*/  cxgb ; 
 int /*<<< orphan*/  FUNC4 (struct port_info*) ; 
 int /*<<< orphan*/  cxgb_get_counter ; 
 int /*<<< orphan*/  cxgb_init ; 
 int /*<<< orphan*/  cxgb_ioctl ; 
 int FUNC5 (struct port_info*) ; 
 int /*<<< orphan*/  cxgb_media_change ; 
 int /*<<< orphan*/  cxgb_media_status ; 
 int /*<<< orphan*/  cxgb_qflush ; 
 int /*<<< orphan*/  cxgb_transmit ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct port_info* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct port_info*) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct port_info *p;
	struct ifnet *ifp;
	int err;
	struct adapter *sc;

	p = FUNC8(dev);
	sc = p->adapter;
	FUNC17(p->lockbuf, PORT_NAME_LEN, "cxgb port lock %d:%d",
	    FUNC9(FUNC7(dev)), p->port_id);
	FUNC1(p, p->lockbuf);

	FUNC3(&p->link_check_ch, 1);
	FUNC2(&p->link_check_task, 0, check_link_status, p);

	/* Allocate an ifnet object and set it up */
	ifp = p->ifp = FUNC12(IFT_ETHER);
	if (ifp == NULL) {
		FUNC10(dev, "Cannot allocate ifnet\n");
		return (ENOMEM);
	}
	
	FUNC13(ifp, FUNC6(dev), FUNC9(dev));
	ifp->if_init = cxgb_init;
	ifp->if_softc = p;
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = cxgb_ioctl;
	ifp->if_transmit = cxgb_transmit;
	ifp->if_qflush = cxgb_qflush;
	ifp->if_get_counter = cxgb_get_counter;

	ifp->if_capabilities = CXGB_CAP;
#ifdef TCP_OFFLOAD
	if (is_offload(sc))
		ifp->if_capabilities |= IFCAP_TOE4;
#endif
	ifp->if_capenable = CXGB_CAP_ENABLE;
	ifp->if_hwassist = CSUM_TCP | CSUM_UDP | CSUM_IP | CSUM_TSO |
	    CSUM_UDP_IPV6 | CSUM_TCP_IPV6;

	/*
	 * Disable TSO on 4-port - it isn't supported by the firmware.
	 */	
	if (sc->params.nports > 2) {
		ifp->if_capabilities &= ~(IFCAP_TSO | IFCAP_VLAN_HWTSO);
		ifp->if_capenable &= ~(IFCAP_TSO | IFCAP_VLAN_HWTSO);
		ifp->if_hwassist &= ~CSUM_TSO;
	}

	FUNC11(ifp, p->hw_addr);

	/* Attach driver debugnet methods. */
	FUNC0(ifp, cxgb);

#ifdef DEFAULT_JUMBO
	if (sc->params.nports <= 2)
		ifp->if_mtu = ETHERMTU_JUMBO;
#endif
	if ((err = FUNC5(p)) != 0) {
		FUNC16("makedev failed %d\n", err);
		return (err);
	}

	/* Create a list of media supported by this port */
	FUNC14(&p->media, IFM_IMASK, cxgb_media_change,
	    cxgb_media_status);
	FUNC4(p);
      
	FUNC18(p);

	return (err);
}