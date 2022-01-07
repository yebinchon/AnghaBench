
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {int * mac_addr; } ;
struct TYPE_12__ {int promisc; int flow_control; int if_cap_flags; int nifs; int if_id; TYPE_1__ macaddr; scalar_t__ enable_hwlro; } ;
typedef TYPE_2__* POCE_SOFTC ;


 scalar_t__ IS_SH (TYPE_2__*) ;
 scalar_t__ IS_XE201 (TYPE_2__*) ;
 int MBX_RX_IFACE_FLAGS_LRO ;
 int MBX_RX_IFACE_FLAGS_MULTICAST ;
 int MBX_RX_IFACE_FLAGS_PASS_L3L4_ERR ;
 int MBX_RX_IFACE_FLAGS_RSS ;
 int OCE_CAPAB_ENABLE ;
 int OCE_CAPAB_FLAGS ;
 int atomic_inc_32 (int *) ;
 scalar_t__ is_rss_enabled (TYPE_2__*) ;
 int oce_delete_nw_interface (TYPE_2__*) ;
 int oce_if_create (TYPE_2__*,int ,int ,int ,int *,int *) ;
 int oce_rxf_set_promiscuous (TYPE_2__*,int ) ;
 int oce_set_flow_control (TYPE_2__*,int ) ;

int
oce_create_nw_interface(POCE_SOFTC sc)
{
 int rc;
 uint32_t capab_flags;
 uint32_t capab_en_flags;


 capab_flags = OCE_CAPAB_FLAGS;


 capab_en_flags = OCE_CAPAB_ENABLE;

 if (IS_XE201(sc)) {

  capab_en_flags &= ~MBX_RX_IFACE_FLAGS_PASS_L3L4_ERR;
  capab_flags &= ~MBX_RX_IFACE_FLAGS_PASS_L3L4_ERR;
 }

 if (IS_SH(sc) || IS_XE201(sc))
  capab_flags |= MBX_RX_IFACE_FLAGS_MULTICAST;

        if (sc->enable_hwlro) {
                capab_flags |= MBX_RX_IFACE_FLAGS_LRO;
                capab_en_flags |= MBX_RX_IFACE_FLAGS_LRO;
        }


 if (is_rss_enabled(sc))
  capab_en_flags |= MBX_RX_IFACE_FLAGS_RSS;
 else {
  capab_en_flags &= ~MBX_RX_IFACE_FLAGS_RSS;
  capab_flags &= ~MBX_RX_IFACE_FLAGS_RSS;
 }

 rc = oce_if_create(sc,
      capab_flags,
      capab_en_flags,
      0, &sc->macaddr.mac_addr[0], &sc->if_id);
 if (rc)
  return rc;

 atomic_inc_32(&sc->nifs);

 sc->if_cap_flags = capab_en_flags;


 rc = oce_set_flow_control(sc, sc->flow_control);
 if (rc)
  goto error;

 rc = oce_rxf_set_promiscuous(sc, sc->promisc);
 if (rc)
  goto error;

 return rc;

error:
 oce_delete_nw_interface(sc);
 return rc;

}
