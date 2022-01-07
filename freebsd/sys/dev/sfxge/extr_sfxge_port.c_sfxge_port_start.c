
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct sockaddr_dl {int dummy; } ;
struct TYPE_7__ {TYPE_2__* ifm_cur; } ;
struct TYPE_8__ {int dma_buf; } ;
struct sfxge_port {scalar_t__ init_state; TYPE_4__ mac_stats; int stats_update_period_ms; } ;
struct sfxge_softc {int * enp; TYPE_3__ media; struct sfxge_port port; struct ifnet* ifnet; } ;
struct ifnet {TYPE_1__* if_addr; int if_mtu; } ;
struct epoch_tracker {int dummy; } ;
typedef int mac_addr ;
typedef int efx_nic_t ;
struct TYPE_6__ {int ifm_media; } ;
struct TYPE_5__ {scalar_t__ ifa_addr; } ;


 int B_FALSE ;
 int B_TRUE ;
 size_t EFX_MAC_PDU (int ) ;
 int ETHER_ADDR_LEN ;
 int KASSERT (int,char*) ;
 int LLADDR (struct sockaddr_dl*) ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 scalar_t__ SFXGE_PORT_INITIALIZED ;
 int SFXGE_PORT_LOCK (struct sfxge_port*) ;
 scalar_t__ SFXGE_PORT_STARTED ;
 int SFXGE_PORT_UNLOCK (struct sfxge_port*) ;
 int bcopy (int ,int *,int) ;
 int efx_filter_fini (int *) ;
 int efx_filter_init (int *) ;
 int efx_mac_addr_set (int *,int *) ;
 int efx_mac_drain (int *,int ) ;
 int efx_mac_fcntl_set (int *,int ,int ) ;
 int efx_mac_pdu_set (int *,size_t) ;
 int efx_mac_stats_periodic (int *,int *,int ,int ) ;
 int efx_phy_adv_cap_set (int *,int ) ;
 int efx_port_fini (int *) ;
 int efx_port_init (int *) ;
 int sfxge_mac_filter_set_locked (struct sfxge_softc*) ;
 int sfxge_mac_poll_work (struct sfxge_softc*,int ) ;
 int sfxge_phy_cap_mask (struct sfxge_softc*,int ,int *) ;
 int sfxge_port_wanted_fc (struct sfxge_softc*) ;

int
sfxge_port_start(struct sfxge_softc *sc)
{
 uint8_t mac_addr[ETHER_ADDR_LEN];
 struct epoch_tracker et;
 struct ifnet *ifp = sc->ifnet;
 struct sfxge_port *port;
 efx_nic_t *enp;
 size_t pdu;
 int rc;
 uint32_t phy_cap_mask;

 port = &sc->port;
 enp = sc->enp;

 SFXGE_PORT_LOCK(port);

 KASSERT(port->init_state == SFXGE_PORT_INITIALIZED,
     ("port not initialized"));


 if ((rc = efx_filter_init(enp)) != 0)
  goto fail_filter_init;


 if ((rc = efx_port_init(sc->enp)) != 0)
  goto fail;


 pdu = EFX_MAC_PDU(ifp->if_mtu);
 if ((rc = efx_mac_pdu_set(enp, pdu)) != 0)
  goto fail2;

 if ((rc = efx_mac_fcntl_set(enp, sfxge_port_wanted_fc(sc), B_TRUE))
     != 0)
  goto fail3;


 NET_EPOCH_ENTER(et);
 bcopy(LLADDR((struct sockaddr_dl *)ifp->if_addr->ifa_addr),
       mac_addr, sizeof(mac_addr));
 NET_EPOCH_EXIT(et);
 if ((rc = efx_mac_addr_set(enp, mac_addr)) != 0)
  goto fail4;

 sfxge_mac_filter_set_locked(sc);


 if ((rc = efx_mac_stats_periodic(enp, &port->mac_stats.dma_buf,
      port->stats_update_period_ms,
      B_FALSE)) != 0)
  goto fail6;

 if ((rc = efx_mac_drain(enp, B_FALSE)) != 0)
  goto fail8;

 if ((rc = sfxge_phy_cap_mask(sc, sc->media.ifm_cur->ifm_media,
         &phy_cap_mask)) != 0)
  goto fail9;

 if ((rc = efx_phy_adv_cap_set(sc->enp, phy_cap_mask)) != 0)
  goto fail10;

 port->init_state = SFXGE_PORT_STARTED;


 SFXGE_PORT_UNLOCK(port);
 sfxge_mac_poll_work(sc, 0);

 return (0);

fail10:
fail9:
 (void)efx_mac_drain(enp, B_TRUE);
fail8:
 (void)efx_mac_stats_periodic(enp, &port->mac_stats.dma_buf, 0, B_FALSE);
fail6:
fail4:
fail3:

fail2:
 efx_port_fini(enp);
fail:
 efx_filter_fini(enp);
fail_filter_init:
 SFXGE_PORT_UNLOCK(port);

 return (rc);
}
