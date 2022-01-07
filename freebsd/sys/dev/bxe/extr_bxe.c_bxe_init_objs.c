
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bxe_softc {int flags; int sp_state; TYPE_1__* fp; int rss_conf_obj; int vlans_pool; int macs_pool; int mcast_obj; int rx_mode_obj; } ;
typedef int ecore_obj_type ;
struct TYPE_2__ {int index; int cl_id; } ;


 int BXE_SP (struct bxe_softc*,int ) ;
 int BXE_SP_MAPPING (struct bxe_softc*,int ) ;
 int BXE_TX_SWITCHING ;
 scalar_t__ CHIP_IS_E1x (struct bxe_softc*) ;
 int ECORE_FILTER_MCAST_PENDING ;
 int ECORE_FILTER_RSS_CONF_PENDING ;
 int ECORE_OBJ_TYPE_RX ;
 int ECORE_OBJ_TYPE_RX_TX ;
 int SC_ABS_FUNC (struct bxe_softc*) ;
 int SC_FUNC (struct bxe_softc*) ;
 int VNICS_PER_PATH (struct bxe_softc*) ;
 int VNICS_PER_PORT (struct bxe_softc*) ;
 int ecore_init_mac_credit_pool (struct bxe_softc*,int *,int ,int ) ;
 int ecore_init_mcast_obj (struct bxe_softc*,int *,int ,int ,int ,int ,int ,int ,int ,int *,int ) ;
 int ecore_init_rss_config_obj (struct bxe_softc*,int *,int ,int ,int ,int ,int ,int ,int ,int *,int ) ;
 int ecore_init_rx_mode_obj (struct bxe_softc*,int *) ;
 int ecore_init_vlan_credit_pool (struct bxe_softc*,int *,int,int ) ;
 int mcast_rdata ;
 int rss_rdata ;

__attribute__((used)) static inline void
bxe_init_objs(struct bxe_softc *sc)
{

    ecore_obj_type o_type =
        (sc->flags & BXE_TX_SWITCHING) ? ECORE_OBJ_TYPE_RX_TX :
                                         ECORE_OBJ_TYPE_RX;


    ecore_init_rx_mode_obj(sc, &sc->rx_mode_obj);


    ecore_init_mcast_obj(sc,
                         &sc->mcast_obj,
                         sc->fp[0].cl_id,
                         sc->fp[0].index,
                         SC_FUNC(sc),
                         SC_FUNC(sc),
                         BXE_SP(sc, mcast_rdata),
                         BXE_SP_MAPPING(sc, mcast_rdata),
                         ECORE_FILTER_MCAST_PENDING,
                         &sc->sp_state,
                         o_type);


    ecore_init_mac_credit_pool(sc,
                               &sc->macs_pool,
                               SC_FUNC(sc),
                               CHIP_IS_E1x(sc) ? VNICS_PER_PORT(sc) :
                                                 VNICS_PER_PATH(sc));

    ecore_init_vlan_credit_pool(sc,
                                &sc->vlans_pool,
                                SC_ABS_FUNC(sc) >> 1,
                                CHIP_IS_E1x(sc) ? VNICS_PER_PORT(sc) :
                                                  VNICS_PER_PATH(sc));


    ecore_init_rss_config_obj(sc,
                              &sc->rss_conf_obj,
                              sc->fp[0].cl_id,
                              sc->fp[0].index,
                              SC_FUNC(sc),
                              SC_FUNC(sc),
                              BXE_SP(sc, rss_rdata),
                              BXE_SP_MAPPING(sc, rss_rdata),
                              ECORE_FILTER_RSS_CONF_PENDING,
                              &sc->sp_state, ECORE_OBJ_TYPE_RX);
}
