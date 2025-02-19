
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
struct TYPE_16__ {int port; int hw_led_mode; int switch_cfg; int* mac_addr; void* multi_phy_config; int feature_config_flags; void* lane_config; void** speed_cap_mask; struct bxe_softc* sc; } ;
struct TYPE_14__ {int* link_config; void* ext_phy_config; void* config; } ;
struct TYPE_11__ {int hw_config; void* hw_config2; } ;
struct bxe_softc {scalar_t__* mac_addr_str; TYPE_7__ link_params; TYPE_5__ port; TYPE_2__ devinfo; } ;
struct TYPE_13__ {int config; } ;
struct TYPE_10__ {int config2; int config; } ;
struct TYPE_18__ {TYPE_6__* port_hw_config; TYPE_4__ shared_feature_config; TYPE_3__* port_feature_config; TYPE_1__ shared_hw_config; } ;
struct TYPE_17__ {int mac_lower; int mac_upper; } ;
struct TYPE_15__ {int mac_lower; int mac_upper; int external_phy_config; int multi_phy_config; int lane_config; int speed_capability_mask2; int speed_capability_mask; } ;
struct TYPE_12__ {int link_config2; int link_config; int config; } ;


 int BLOGD (struct bxe_softc*,int ,char*,scalar_t__*) ;
 int BLOGE (struct bxe_softc*,char*) ;
 int DBG_LOAD ;
 size_t ELINK_EXT_PHY1 ;
 int ELINK_FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED ;
 size_t ELINK_INT_PHY ;
 scalar_t__ IS_MF (struct bxe_softc*) ;
 int MFCFG_RD (struct bxe_softc*,int ) ;
 int PORT_FEATURE_CONNECTED_SWITCH_MASK ;
 size_t SC_ABS_FUNC (struct bxe_softc*) ;
 int SC_PORT (struct bxe_softc*) ;
 int SHARED_FEAT_CFG_OVERRIDE_PREEMPHASIS_CFG_ENABLED ;
 int SHARED_HW_CFG_LED_MODE_MASK ;
 int SHARED_HW_CFG_LED_MODE_SHIFT ;
 void* SHMEM_RD (struct bxe_softc*,int ) ;
 int bxe_get_mf_cfg_info (struct bxe_softc*) ;
 TYPE_9__ dev_info ;
 TYPE_8__* func_mf_config ;
 int snprintf (scalar_t__*,int,char*,int,int,int,int,int,int) ;

__attribute__((used)) static int
bxe_get_shmem_info(struct bxe_softc *sc)
{
    int port;
    uint32_t mac_hi, mac_lo, val;

    port = SC_PORT(sc);
    mac_hi = mac_lo = 0;

    sc->link_params.sc = sc;
    sc->link_params.port = port;


    sc->devinfo.hw_config =
        SHMEM_RD(sc, dev_info.shared_hw_config.config);
    sc->devinfo.hw_config2 =
        SHMEM_RD(sc, dev_info.shared_hw_config.config2);

    sc->link_params.hw_led_mode =
        ((sc->devinfo.hw_config & SHARED_HW_CFG_LED_MODE_MASK) >>
         SHARED_HW_CFG_LED_MODE_SHIFT);


    sc->port.config =
        SHMEM_RD(sc, dev_info.port_feature_config[port].config);


    sc->link_params.speed_cap_mask[0] =
        SHMEM_RD(sc, dev_info.port_hw_config[port].speed_capability_mask);
    sc->link_params.speed_cap_mask[1] =
        SHMEM_RD(sc, dev_info.port_hw_config[port].speed_capability_mask2);


    sc->link_params.lane_config =
        SHMEM_RD(sc, dev_info.port_hw_config[port].lane_config);


    val = SHMEM_RD(sc, dev_info.port_feature_config[port].link_config);
    sc->port.link_config[ELINK_INT_PHY] = val;
    sc->link_params.switch_cfg = (val & PORT_FEATURE_CONNECTED_SWITCH_MASK);
    sc->port.link_config[ELINK_EXT_PHY1] =
        SHMEM_RD(sc, dev_info.port_feature_config[port].link_config2);


    val = SHMEM_RD(sc, dev_info.shared_feature_config.config);
    if (val & SHARED_FEAT_CFG_OVERRIDE_PREEMPHASIS_CFG_ENABLED) {
        sc->link_params.feature_config_flags |=
            ELINK_FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED;
    } else {
        sc->link_params.feature_config_flags &=
            ~ELINK_FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED;
    }


    sc->link_params.multi_phy_config =
        SHMEM_RD(sc, dev_info.port_hw_config[port].multi_phy_config);


    sc->port.ext_phy_config =
        SHMEM_RD(sc, dev_info.port_hw_config[port].external_phy_config);


    bxe_get_mf_cfg_info(sc);


    if (IS_MF(sc)) {
        mac_hi = MFCFG_RD(sc, func_mf_config[SC_ABS_FUNC(sc)].mac_upper);
        mac_lo = MFCFG_RD(sc, func_mf_config[SC_ABS_FUNC(sc)].mac_lower);
    } else {
        mac_hi = SHMEM_RD(sc, dev_info.port_hw_config[port].mac_upper);
        mac_lo = SHMEM_RD(sc, dev_info.port_hw_config[port].mac_lower);
    }

    if ((mac_lo == 0) && (mac_hi == 0)) {
        *sc->mac_addr_str = 0;
        BLOGE(sc, "No Ethernet address programmed!\n");
    } else {
        sc->link_params.mac_addr[0] = (uint8_t)(mac_hi >> 8);
        sc->link_params.mac_addr[1] = (uint8_t)(mac_hi);
        sc->link_params.mac_addr[2] = (uint8_t)(mac_lo >> 24);
        sc->link_params.mac_addr[3] = (uint8_t)(mac_lo >> 16);
        sc->link_params.mac_addr[4] = (uint8_t)(mac_lo >> 8);
        sc->link_params.mac_addr[5] = (uint8_t)(mac_lo);
        snprintf(sc->mac_addr_str, sizeof(sc->mac_addr_str),
                 "%02x:%02x:%02x:%02x:%02x:%02x",
                 sc->link_params.mac_addr[0], sc->link_params.mac_addr[1],
                 sc->link_params.mac_addr[2], sc->link_params.mac_addr[3],
                 sc->link_params.mac_addr[4], sc->link_params.mac_addr[5]);
        BLOGD(sc, DBG_LOAD, "Ethernet address: %s\n", sc->mac_addr_str);
    }

    return (0);
}
