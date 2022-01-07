
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifreq {int ifr_mtu; int ifr_reqcap; } ;
struct bxe_softc {int mtu; int ifp; int ifmedia; int state; } ;
typedef int if_t ;
typedef scalar_t__ caddr_t ;


 int BLOGD (struct bxe_softc*,int,char*,...) ;
 int BLOGE (struct bxe_softc*,char*,...) ;
 int BXE_CORE_LOCK (struct bxe_softc*) ;
 int BXE_CORE_UNLOCK (struct bxe_softc*) ;
 int BXE_STATE_DISABLED ;
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







 int atomic_store_rel_int (unsigned int volatile*,unsigned long) ;
 int bxe_init_locked (struct bxe_softc*) ;
 int bxe_periodic_stop (struct bxe_softc*) ;
 int bxe_set_rx_mode (struct bxe_softc*) ;
 int bxe_stop_locked (struct bxe_softc*) ;
 int ether_ioctl (int ,int,scalar_t__) ;
 int if_clearhwassist (int ) ;
 int if_getcapenable (int ) ;
 int if_getdrvflags (int ) ;
 int if_getflags (int ) ;
 struct bxe_softc* if_getsoftc (int ) ;
 int if_sethwassistbits (int ,int,int ) ;
 int if_setmtu (int ,int) ;
 int if_togglecapenable (int ,int) ;
 int ifmedia_ioctl (int ,struct ifreq*,int *,int) ;

__attribute__((used)) static int
bxe_ioctl(if_t ifp,
          u_long command,
          caddr_t data)
{
    struct bxe_softc *sc = if_getsoftc(ifp);
    struct ifreq *ifr = (struct ifreq *)data;
    int mask = 0;
    int reinit = 0;
    int error = 0;

    int mtu_min = (ETH_MIN_PACKET_SIZE - ETH_HLEN);
    int mtu_max = (MJUM9BYTES - ETH_OVERHEAD - IP_HEADER_ALIGNMENT_PADDING);

    switch (command)
    {
    case 128:
        BLOGD(sc, DBG_IOCTL, "Received SIOCSIFMTU ioctl (mtu=%d)\n",
              ifr->ifr_mtu);

        if (sc->mtu == ifr->ifr_mtu) {

            break;
        }

        if ((ifr->ifr_mtu < mtu_min) || (ifr->ifr_mtu > mtu_max)) {
            BLOGE(sc, "Unsupported MTU size %d (range is %d-%d)\n",
                  ifr->ifr_mtu, mtu_min, mtu_max);
            error = EINVAL;
            break;
        }

        atomic_store_rel_int((volatile unsigned int *)&sc->mtu,
                             (unsigned long)ifr->ifr_mtu);





 if_setmtu(ifp, ifr->ifr_mtu);
        reinit = 1;
        break;

    case 130:

        BLOGD(sc, DBG_IOCTL, "Received SIOCSIFFLAGS ioctl\n");

 BXE_CORE_LOCK(sc);

        if (if_getflags(ifp) & IFF_UP) {
            if (if_getdrvflags(ifp) & IFF_DRV_RUNNING) {

                bxe_set_rx_mode(sc);
            } else if(sc->state != BXE_STATE_DISABLED) {
  bxe_init_locked(sc);
            }
        } else {
            if (if_getdrvflags(ifp) & IFF_DRV_RUNNING) {
  bxe_periodic_stop(sc);
  bxe_stop_locked(sc);
            }
        }
 BXE_CORE_UNLOCK(sc);

        break;

    case 134:
    case 133:

        BLOGD(sc, DBG_IOCTL, "Received SIOCADDMULTI/SIOCDELMULTI ioctl\n");


        if (if_getdrvflags(ifp) & IFF_DRV_RUNNING) {

     BXE_CORE_LOCK(sc);
            bxe_set_rx_mode(sc);
     BXE_CORE_UNLOCK(sc);
        }

        break;

    case 131:

        mask = (ifr->ifr_reqcap ^ if_getcapenable(ifp));

        BLOGD(sc, DBG_IOCTL, "Received SIOCSIFCAP ioctl (mask=0x%08x)\n",
              mask);


        if (mask & IFCAP_LRO) {
     if_togglecapenable(ifp, IFCAP_LRO);
            BLOGD(sc, DBG_IOCTL, "Turning LRO %s\n",
                  (if_getcapenable(ifp) & IFCAP_LRO) ? "ON" : "OFF");
            reinit = 1;
        }


        if (mask & IFCAP_TXCSUM) {
     if_togglecapenable(ifp, IFCAP_TXCSUM);
            BLOGD(sc, DBG_IOCTL, "Turning TXCSUM %s\n",
                  (if_getcapenable(ifp) & IFCAP_TXCSUM) ? "ON" : "OFF");
            if (if_getcapenable(ifp) & IFCAP_TXCSUM) {
                if_sethwassistbits(ifp, (CSUM_IP |
                                    CSUM_TCP |
                                    CSUM_UDP |
                                    CSUM_TSO |
                                    CSUM_TCP_IPV6 |
                                    CSUM_UDP_IPV6), 0);
            } else {
  if_clearhwassist(ifp);
            }
        }


        if (mask & IFCAP_RXCSUM) {
     if_togglecapenable(ifp, IFCAP_RXCSUM);
            BLOGD(sc, DBG_IOCTL, "Turning RXCSUM %s\n",
                  (if_getcapenable(ifp) & IFCAP_RXCSUM) ? "ON" : "OFF");
            if (if_getcapenable(ifp) & IFCAP_RXCSUM) {
                if_sethwassistbits(ifp, (CSUM_IP |
                                    CSUM_TCP |
                                    CSUM_UDP |
                                    CSUM_TSO |
                                    CSUM_TCP_IPV6 |
                                    CSUM_UDP_IPV6), 0);
            } else {
  if_clearhwassist(ifp);
            }
        }


        if (mask & IFCAP_TSO4) {
            if_togglecapenable(ifp, IFCAP_TSO4);
            BLOGD(sc, DBG_IOCTL, "Turning TSO4 %s\n",
                  (if_getcapenable(ifp) & IFCAP_TSO4) ? "ON" : "OFF");
        }


        if (mask & IFCAP_TSO6) {
     if_togglecapenable(ifp, IFCAP_TSO6);
            BLOGD(sc, DBG_IOCTL, "Turning TSO6 %s\n",
                  (if_getcapenable(ifp) & IFCAP_TSO6) ? "ON" : "OFF");
        }


        if (mask & IFCAP_VLAN_HWTSO) {

     if_togglecapenable(ifp, IFCAP_VLAN_HWTSO);
            BLOGD(sc, DBG_IOCTL, "Turning VLAN_HWTSO %s\n",
                  (if_getcapenable(ifp) & IFCAP_VLAN_HWTSO) ? "ON" : "OFF");
        }


        if (mask & IFCAP_VLAN_HWCSUM) {

            BLOGE(sc, "Changing VLAN_HWCSUM is not supported!\n");
            error = EINVAL;
        }


        if (mask & IFCAP_VLAN_MTU) {

            BLOGE(sc, "Changing VLAN_MTU is not supported!\n");
            error = EINVAL;
        }


        if (mask & IFCAP_VLAN_HWTAGGING) {

            BLOGE(sc, "Changing VLAN_HWTAGGING is not supported!\n");
            error = EINVAL;
        }


        if (mask & IFCAP_VLAN_HWFILTER) {

            BLOGE(sc, "Changing VLAN_HWFILTER is not supported!\n");
            error = EINVAL;
        }





        break;

    case 129:
    case 132:

        BLOGD(sc, DBG_IOCTL,
              "Received SIOCSIFMEDIA/SIOCGIFMEDIA ioctl (cmd=%lu)\n",
              (command & 0xff));
        error = ifmedia_ioctl(ifp, ifr, &sc->ifmedia, command);
        break;

    default:
        BLOGD(sc, DBG_IOCTL, "Received Unknown Ioctl (cmd=%lu)\n",
              (command & 0xff));
        error = ether_ioctl(ifp, command, data);
        break;
    }

    if (reinit && (if_getdrvflags(sc->ifp) & IFF_DRV_RUNNING)) {
        BLOGD(sc, DBG_LOAD | DBG_IOCTL,
              "Re-initializing hardware from IOCTL change\n");
 bxe_periodic_stop(sc);
 BXE_CORE_LOCK(sc);
 bxe_stop_locked(sc);
 bxe_init_locked(sc);
 BXE_CORE_UNLOCK(sc);
    }

    return (error);
}
