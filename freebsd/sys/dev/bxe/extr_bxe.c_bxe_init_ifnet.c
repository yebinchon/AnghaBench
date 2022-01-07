
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int mac_addr; } ;
struct TYPE_8__ {int ifm_media; TYPE_1__* ifm_cur; } ;
struct bxe_softc {int media; TYPE_2__ link_params; int * ifp; int tx_ring_size; int mtu; int dev; TYPE_3__ ifmedia; } ;
typedef int * if_t ;
struct TYPE_6__ {int ifm_media; } ;


 int BLOGE (struct bxe_softc*,char*) ;
 int BLOGI (struct bxe_softc*,char*,int ) ;
 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_TCP_IPV6 ;
 int CSUM_TSO ;
 int CSUM_UDP ;
 int CSUM_UDP_IPV6 ;
 int DEBUGNET_SET (int *,int ) ;
 int ENXIO ;
 int IFCAP_HWCSUM ;
 int IFCAP_JUMBO_MTU ;
 int IFCAP_LRO ;
 int IFCAP_TSO4 ;
 int IFCAP_TSO6 ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWFILTER ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFCAP_VLAN_MTU ;
 int IFCAP_WOL_MAGIC ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_IMASK ;
 int IFT_ETHER ;
 int IF_Gbps (int) ;
 int bxe ;
 int bxe_get_counter ;
 int bxe_ifmedia_status ;
 int bxe_ifmedia_update ;
 int bxe_init ;
 int bxe_ioctl ;
 int bxe_mq_flush ;
 int bxe_tx_mq_start ;
 int bxe_tx_start ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int ether_ifattach (int *,int ) ;
 int if_getcapabilities (int *) ;
 int * if_gethandle (int ) ;
 int if_initname (int *,int ,int ) ;
 int if_setbaudrate (int *,int ) ;
 int if_setcapabilitiesbit (int *,int,int ) ;
 int if_setcapenable (int *,int ) ;
 int if_setflags (int *,int) ;
 int if_setgetcounterfn (int *,int ) ;
 int if_sethwassist (int *,int) ;
 int if_setinitfn (int *,int ) ;
 int if_setioctlfn (int *,int ) ;
 int if_setmtu (int *,int ) ;
 int if_setqflushfn (int *,int ) ;
 int if_setsendqlen (int *,int ) ;
 int if_setsendqready (int *) ;
 int if_setsoftc (int *,struct bxe_softc*) ;
 int if_setstartfn (int *,int ) ;
 int if_settimer (int *,int ) ;
 int if_settransmitfn (int *,int ) ;
 int ifmedia_add (TYPE_3__*,int,int ,int *) ;
 int ifmedia_init (TYPE_3__*,int ,int ,int ) ;
 int ifmedia_set (TYPE_3__*,int) ;

__attribute__((used)) static int
bxe_init_ifnet(struct bxe_softc *sc)
{
    if_t ifp;
    int capabilities;


    ifmedia_init(&sc->ifmedia, IFM_IMASK,
                 bxe_ifmedia_update,
                 bxe_ifmedia_status);


    ifmedia_add(&sc->ifmedia, (IFM_ETHER | IFM_FDX | sc->media), 0, ((void*)0));
    ifmedia_add(&sc->ifmedia, (IFM_ETHER | IFM_AUTO), 0, ((void*)0));
    ifmedia_set(&sc->ifmedia, (IFM_ETHER | IFM_AUTO));

    sc->ifmedia.ifm_media = sc->ifmedia.ifm_cur->ifm_media;
 BLOGI(sc, "IFMEDIA flags : %x\n", sc->ifmedia.ifm_media);


    if ((ifp = if_gethandle(IFT_ETHER)) == ((void*)0)) {
        BLOGE(sc, "Interface allocation failed!\n");
        return (ENXIO);
    }

    if_setsoftc(ifp, sc);
    if_initname(ifp, device_get_name(sc->dev), device_get_unit(sc->dev));
    if_setflags(ifp, (IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST));
    if_setioctlfn(ifp, bxe_ioctl);
    if_setstartfn(ifp, bxe_tx_start);
    if_setgetcounterfn(ifp, bxe_get_counter);







    if_setinitfn(ifp, bxe_init);
    if_setmtu(ifp, sc->mtu);
    if_sethwassist(ifp, (CSUM_IP |
                        CSUM_TCP |
                        CSUM_UDP |
                        CSUM_TSO |
                        CSUM_TCP_IPV6 |
                        CSUM_UDP_IPV6));

    capabilities =

        (IFCAP_VLAN_MTU |
         IFCAP_VLAN_HWTAGGING |
         IFCAP_HWCSUM |
         IFCAP_JUMBO_MTU |
         IFCAP_LRO);
    if_setcapabilitiesbit(ifp, capabilities, 0);
    if_setcapenable(ifp, if_getcapabilities(ifp));
    if_setbaudrate(ifp, IF_Gbps(10));

    if_setsendqlen(ifp, sc->tx_ring_size);
    if_setsendqready(ifp);


    sc->ifp = ifp;


    ether_ifattach(ifp, sc->link_params.mac_addr);


    DEBUGNET_SET(ifp, bxe);

    return (0);
}
