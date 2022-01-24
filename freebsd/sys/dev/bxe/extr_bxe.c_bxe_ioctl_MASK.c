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
typedef  int u_long ;
struct ifreq {int ifr_mtu; int ifr_reqcap; } ;
struct bxe_softc {int mtu; int /*<<< orphan*/  ifp; int /*<<< orphan*/  ifmedia; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 int /*<<< orphan*/  BXE_STATE_DISABLED ; 
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_TCP_IPV6 ; 
 int CSUM_TSO ; 
 int CSUM_UDP ; 
 int CSUM_UDP_IPV6 ; 
 int DBG_IOCTL ; 
 int DBG_LOAD ; 
 int EINVAL ; 
 int ETH_HLEN ; 
 int ETH_MIN_PACKET_SIZE ; 
 int ETH_OVERHEAD ; 
 int IFCAP_LRO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TSO6 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWFILTER ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int IP_HEADER_ALIGNMENT_PADDING ; 
 int MJUM9BYTES ; 
#define  SIOCADDMULTI 134 
#define  SIOCDELMULTI 133 
#define  SIOCGIFMEDIA 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  FUNC4 (unsigned int volatile*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 struct bxe_softc* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int FUNC18 (int /*<<< orphan*/ ,struct ifreq*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC19(if_t ifp,
          u_long       command,
          caddr_t      data)
{
    struct bxe_softc *sc = FUNC14(ifp);
    struct ifreq *ifr = (struct ifreq *)data;
    int mask = 0;
    int reinit = 0;
    int error = 0;

    int mtu_min = (ETH_MIN_PACKET_SIZE - ETH_HLEN);
    int mtu_max = (MJUM9BYTES - ETH_OVERHEAD - IP_HEADER_ALIGNMENT_PADDING);

    switch (command)
    {
    case SIOCSIFMTU:
        FUNC0(sc, DBG_IOCTL, "Received SIOCSIFMTU ioctl (mtu=%d)\n",
              ifr->ifr_mtu);

        if (sc->mtu == ifr->ifr_mtu) {
            /* nothing to change */
            break;
        }

        if ((ifr->ifr_mtu < mtu_min) || (ifr->ifr_mtu > mtu_max)) {
            FUNC1(sc, "Unsupported MTU size %d (range is %d-%d)\n",
                  ifr->ifr_mtu, mtu_min, mtu_max);
            error = EINVAL;
            break;
        }

        FUNC4((volatile unsigned int *)&sc->mtu,
                             (unsigned long)ifr->ifr_mtu);
	/* 
        atomic_store_rel_long((volatile unsigned long *)&if_getmtu(ifp),
                              (unsigned long)ifr->ifr_mtu);
	XXX - Not sure why it needs to be atomic
	*/
	FUNC16(ifp, ifr->ifr_mtu);
        reinit = 1;
        break;

    case SIOCSIFFLAGS:
        /* toggle the interface state up or down */
        FUNC0(sc, DBG_IOCTL, "Received SIOCSIFFLAGS ioctl\n");

	FUNC2(sc);
        /* check if the interface is up */
        if (FUNC13(ifp) & IFF_UP) {
            if (FUNC12(ifp) & IFF_DRV_RUNNING) {
                /* set the receive mode flags */
                FUNC7(sc);
            } else if(sc->state != BXE_STATE_DISABLED) {
		FUNC5(sc);
            }
        } else {
            if (FUNC12(ifp) & IFF_DRV_RUNNING) {
		FUNC6(sc);
		FUNC8(sc);
            }
        }
	FUNC3(sc);

        break;

    case SIOCADDMULTI:
    case SIOCDELMULTI:
        /* add/delete multicast addresses */
        FUNC0(sc, DBG_IOCTL, "Received SIOCADDMULTI/SIOCDELMULTI ioctl\n");

        /* check if the interface is up */
        if (FUNC12(ifp) & IFF_DRV_RUNNING) {
            /* set the receive mode flags */
	    FUNC2(sc);
            FUNC7(sc);
	    FUNC3(sc); 
        }

        break;

    case SIOCSIFCAP:
        /* find out which capabilities have changed */
        mask = (ifr->ifr_reqcap ^ FUNC11(ifp));

        FUNC0(sc, DBG_IOCTL, "Received SIOCSIFCAP ioctl (mask=0x%08x)\n",
              mask);

        /* toggle the LRO capabilites enable flag */
        if (mask & IFCAP_LRO) {
	    FUNC17(ifp, IFCAP_LRO);
            FUNC0(sc, DBG_IOCTL, "Turning LRO %s\n",
                  (FUNC11(ifp) & IFCAP_LRO) ? "ON" : "OFF");
            reinit = 1;
        }

        /* toggle the TXCSUM checksum capabilites enable flag */
        if (mask & IFCAP_TXCSUM) {
	    FUNC17(ifp, IFCAP_TXCSUM);
            FUNC0(sc, DBG_IOCTL, "Turning TXCSUM %s\n",
                  (FUNC11(ifp) & IFCAP_TXCSUM) ? "ON" : "OFF");
            if (FUNC11(ifp) & IFCAP_TXCSUM) {
                FUNC15(ifp, (CSUM_IP      | 
                                    CSUM_TCP      |
                                    CSUM_UDP      |
                                    CSUM_TSO      |
                                    CSUM_TCP_IPV6 |
                                    CSUM_UDP_IPV6), 0);
            } else {
		FUNC10(ifp); /* XXX */
            }
        }

        /* toggle the RXCSUM checksum capabilities enable flag */
        if (mask & IFCAP_RXCSUM) {
	    FUNC17(ifp, IFCAP_RXCSUM);
            FUNC0(sc, DBG_IOCTL, "Turning RXCSUM %s\n",
                  (FUNC11(ifp) & IFCAP_RXCSUM) ? "ON" : "OFF");
            if (FUNC11(ifp) & IFCAP_RXCSUM) {
                FUNC15(ifp, (CSUM_IP      |
                                    CSUM_TCP      |
                                    CSUM_UDP      |
                                    CSUM_TSO      |
                                    CSUM_TCP_IPV6 |
                                    CSUM_UDP_IPV6), 0);
            } else {
		FUNC10(ifp); /* XXX */
            }
        }

        /* toggle TSO4 capabilities enabled flag */
        if (mask & IFCAP_TSO4) {
            FUNC17(ifp, IFCAP_TSO4);
            FUNC0(sc, DBG_IOCTL, "Turning TSO4 %s\n",
                  (FUNC11(ifp) & IFCAP_TSO4) ? "ON" : "OFF");
        }

        /* toggle TSO6 capabilities enabled flag */
        if (mask & IFCAP_TSO6) {
	    FUNC17(ifp, IFCAP_TSO6);
            FUNC0(sc, DBG_IOCTL, "Turning TSO6 %s\n",
                  (FUNC11(ifp) & IFCAP_TSO6) ? "ON" : "OFF");
        }

        /* toggle VLAN_HWTSO capabilities enabled flag */
        if (mask & IFCAP_VLAN_HWTSO) {

	    FUNC17(ifp, IFCAP_VLAN_HWTSO);
            FUNC0(sc, DBG_IOCTL, "Turning VLAN_HWTSO %s\n",
                  (FUNC11(ifp) & IFCAP_VLAN_HWTSO) ? "ON" : "OFF");
        }

        /* toggle VLAN_HWCSUM capabilities enabled flag */
        if (mask & IFCAP_VLAN_HWCSUM) {
            /* XXX investigate this... */
            FUNC1(sc, "Changing VLAN_HWCSUM is not supported!\n");
            error = EINVAL;
        }

        /* toggle VLAN_MTU capabilities enable flag */
        if (mask & IFCAP_VLAN_MTU) {
            /* XXX investigate this... */
            FUNC1(sc, "Changing VLAN_MTU is not supported!\n");
            error = EINVAL;
        }

        /* toggle VLAN_HWTAGGING capabilities enabled flag */
        if (mask & IFCAP_VLAN_HWTAGGING) {
            /* XXX investigate this... */
            FUNC1(sc, "Changing VLAN_HWTAGGING is not supported!\n");
            error = EINVAL;
        }

        /* toggle VLAN_HWFILTER capabilities enabled flag */
        if (mask & IFCAP_VLAN_HWFILTER) {
            /* XXX investigate this... */
            FUNC1(sc, "Changing VLAN_HWFILTER is not supported!\n");
            error = EINVAL;
        }

        /* XXX not yet...
         * IFCAP_WOL_MAGIC
         */

        break;

    case SIOCSIFMEDIA:
    case SIOCGIFMEDIA:
        /* set/get interface media */
        FUNC0(sc, DBG_IOCTL,
              "Received SIOCSIFMEDIA/SIOCGIFMEDIA ioctl (cmd=%lu)\n",
              (command & 0xff));
        error = FUNC18(ifp, ifr, &sc->ifmedia, command);
        break;

    default:
        FUNC0(sc, DBG_IOCTL, "Received Unknown Ioctl (cmd=%lu)\n",
              (command & 0xff));
        error = FUNC9(ifp, command, data);
        break;
    }

    if (reinit && (FUNC12(sc->ifp) & IFF_DRV_RUNNING)) {
        FUNC0(sc, DBG_LOAD | DBG_IOCTL,
              "Re-initializing hardware from IOCTL change\n");
	FUNC6(sc);
	FUNC2(sc);
	FUNC8(sc);
	FUNC5(sc);
	FUNC3(sc);
    }

    return (error);
}