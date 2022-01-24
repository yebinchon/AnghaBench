#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int uint32_t ;
typedef  int u_long ;
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_hwassist; int /*<<< orphan*/  if_mtu; TYPE_2__* if_softc; } ;
struct ifi2creq {int len; size_t offset; int /*<<< orphan*/ * data; int /*<<< orphan*/  dev_addr; } ;
typedef  int /*<<< orphan*/  i2c ;
typedef  scalar_t__ caddr_t ;
struct TYPE_11__ {int /*<<< orphan*/  enable_hwlro; int /*<<< orphan*/  dev; int /*<<< orphan*/  promisc; int /*<<< orphan*/  dev_lock; TYPE_1__* ifp; int /*<<< orphan*/  media; } ;
struct TYPE_10__ {int if_drv_flags; } ;
typedef  TYPE_2__* POCE_SOFTC ;

/* Variables and functions */
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_TSO ; 
 int CSUM_UDP ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int IFCAP_LRO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TSO ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_HWFILTER ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCE_MAX_MTU ; 
 int /*<<< orphan*/  PAGE_NUM_A0 ; 
 int /*<<< orphan*/  PAGE_NUM_A2 ; 
#define  SIOCADDMULTI 135 
#define  SIOCDELMULTI 134 
#define  SIOCGI2C 133 
#define  SIOCGIFMEDIA 132 
#define  SIOCGPRIVATE_0 131 
#define  SIOCSIFCAP 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMTU 128 
 size_t TRANSCEIVER_A0_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ifi2creq*,int) ; 
 int FUNC3 (struct ifi2creq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct ifnet*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,char*) ; 
 int FUNC7 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct ifnet*,scalar_t__) ; 
 int FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_2__*,int) ; 
 int FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/ * sfp_vpd_dump_buffer ; 

__attribute__((used)) static int
FUNC18(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct ifreq *ifr = (struct ifreq *)data;
	POCE_SOFTC sc = ifp->if_softc;
	struct ifi2creq i2c;
	uint8_t	offset = 0;
	int rc = 0;
	uint32_t u;

	switch (command) {

	case SIOCGIFMEDIA:
		rc = FUNC7(ifp, ifr, &sc->media, command);
		break;

	case SIOCSIFMTU:
		if (ifr->ifr_mtu > OCE_MAX_MTU)
			rc = EINVAL;
		else
			ifp->if_mtu = ifr->ifr_mtu;
		break;

	case SIOCSIFFLAGS:
		if (ifp->if_flags & IFF_UP) {
			if (!(ifp->if_drv_flags & IFF_DRV_RUNNING)) {
				sc->ifp->if_drv_flags |= IFF_DRV_RUNNING;	
				FUNC13(sc);
			}
			FUNC4(sc->dev, "Interface Up\n");	
		} else {
			FUNC0(&sc->dev_lock);

			sc->ifp->if_drv_flags &=
			    ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
			FUNC12(sc);

			FUNC1(&sc->dev_lock);

			FUNC4(sc->dev, "Interface Down\n");
		}

		if ((ifp->if_flags & IFF_PROMISC) && !sc->promisc) {
			if (!FUNC16(sc, (1 | (1 << 1))))
				sc->promisc = TRUE;
		} else if (!(ifp->if_flags & IFF_PROMISC) && sc->promisc) {
			if (!FUNC16(sc, 0))
				sc->promisc = FALSE;
		}

		break;

	case SIOCADDMULTI:
	case SIOCDELMULTI:
		rc = FUNC11(sc);
		if (rc)
			FUNC4(sc->dev,
				"Update multicast address failed\n");
		break;

	case SIOCSIFCAP:
		u = ifr->ifr_reqcap ^ ifp->if_capenable;

		if (u & IFCAP_TXCSUM) {
			ifp->if_capenable ^= IFCAP_TXCSUM;
			ifp->if_hwassist ^= (CSUM_TCP | CSUM_UDP | CSUM_IP);
			
			if (IFCAP_TSO & ifp->if_capenable &&
			    !(IFCAP_TXCSUM & ifp->if_capenable)) {
				ifp->if_capenable &= ~IFCAP_TSO;
				ifp->if_hwassist &= ~CSUM_TSO;
				FUNC6(ifp,
					 "TSO disabled due to -txcsum.\n");
			}
		}

		if (u & IFCAP_RXCSUM)
			ifp->if_capenable ^= IFCAP_RXCSUM;

		if (u & IFCAP_TSO4) {
			ifp->if_capenable ^= IFCAP_TSO4;

			if (IFCAP_TSO & ifp->if_capenable) {
				if (IFCAP_TXCSUM & ifp->if_capenable)
					ifp->if_hwassist |= CSUM_TSO;
				else {
					ifp->if_capenable &= ~IFCAP_TSO;
					ifp->if_hwassist &= ~CSUM_TSO;
					FUNC6(ifp,
					    "Enable txcsum first.\n");
					rc = EAGAIN;
				}
			} else
				ifp->if_hwassist &= ~CSUM_TSO;
		}

		if (u & IFCAP_VLAN_HWTAGGING)
			ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;

		if (u & IFCAP_VLAN_HWFILTER) {
			ifp->if_capenable ^= IFCAP_VLAN_HWFILTER;
			FUNC17(sc);
		}
#if defined(INET6) || defined(INET)
		if (u & IFCAP_LRO) {
			ifp->if_capenable ^= IFCAP_LRO;
			if(sc->enable_hwlro) {
				if(ifp->if_capenable & IFCAP_LRO) {
					rc = oce_mbox_nic_set_iface_lro_config(sc, 1);
				}else {
					rc = oce_mbox_nic_set_iface_lro_config(sc, 0);
				}
			}
		}
#endif

		break;

	case SIOCGI2C:
		rc = FUNC2(FUNC8(ifr), &i2c, sizeof(i2c));
		if (rc)
			break;

		if (i2c.dev_addr != PAGE_NUM_A0 &&
		    i2c.dev_addr != PAGE_NUM_A2) {
			rc = EINVAL;
			break;
		}

		if (i2c.len > sizeof(i2c.data)) {
			rc = EINVAL;
			break;
		}

		rc = FUNC15(sc, i2c.dev_addr);
		if(rc) {
			rc = -rc;
			break;
		}

		if (i2c.dev_addr == PAGE_NUM_A0)
			offset = i2c.offset;
		else
			offset = TRANSCEIVER_A0_SIZE + i2c.offset;

		FUNC9(&i2c.data[0], &sfp_vpd_dump_buffer[offset], i2c.len);

		rc = FUNC3(&i2c, FUNC8(ifr), sizeof(i2c));
		break;

	case SIOCGPRIVATE_0:
		rc = FUNC10(ifp, data);
		break;
	default:
		rc = FUNC5(ifp, command, data);
		break;
	}

	return rc;
}