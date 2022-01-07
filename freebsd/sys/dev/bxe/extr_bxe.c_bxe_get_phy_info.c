
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int eee_mode; int feature_config_flags; int switch_cfg; int * speed_cap_mask; int lane_config; } ;
struct TYPE_5__ {int config; int * link_config; } ;
struct bxe_softc {scalar_t__ autogreeen; int media; TYPE_3__ link_params; TYPE_1__ port; } ;
struct TYPE_8__ {TYPE_2__* port_feature_config; } ;
struct TYPE_6__ {int eee_power_mode; } ;


 scalar_t__ AUTO_GREEN_FORCE_OFF ;
 scalar_t__ AUTO_GREEN_FORCE_ON ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int ) ;
 int ELINK_DEBUG_P3 (struct bxe_softc*,char*,int ,int ,int ) ;
 int ELINK_EEE_MODE_ADV_LPI ;
 int ELINK_EEE_MODE_ENABLE_LPI ;
 int ELINK_EEE_MODE_OUTPUT_TIME ;
 int ELINK_FEATURE_CONFIG_AUTOGREEEN_ENABLED ;
 int PORT_FEAT_CFG_AUTOGREEEN_ENABLED ;
 int PORT_FEAT_CFG_EEE_POWER_MODE_DISABLED ;
 int PORT_FEAT_CFG_EEE_POWER_MODE_MASK ;
 int PORT_FEAT_CFG_EEE_POWER_MODE_SHIFT ;
 size_t SC_PORT (struct bxe_softc*) ;
 int SHMEM_RD (struct bxe_softc*,int ) ;
 int bxe_link_settings_requested (struct bxe_softc*) ;
 int bxe_link_settings_supported (struct bxe_softc*,int ) ;
 int bxe_media_detect (struct bxe_softc*) ;
 TYPE_4__ dev_info ;

__attribute__((used)) static void
bxe_get_phy_info(struct bxe_softc *sc)
{
    uint8_t port = SC_PORT(sc);
    uint32_t config = sc->port.config;
    uint32_t eee_mode;



    ELINK_DEBUG_P3(sc, "lane_config=0x%08x speed_cap_mask0=0x%08x "
                        "link_config0=0x%08x\n",
               sc->link_params.lane_config,
               sc->link_params.speed_cap_mask[0],
               sc->port.link_config[0]);


    bxe_link_settings_supported(sc, sc->link_params.switch_cfg);
    bxe_link_settings_requested(sc);

    if (sc->autogreeen == AUTO_GREEN_FORCE_ON) {
        sc->link_params.feature_config_flags |=
            ELINK_FEATURE_CONFIG_AUTOGREEEN_ENABLED;
    } else if (sc->autogreeen == AUTO_GREEN_FORCE_OFF) {
        sc->link_params.feature_config_flags &=
            ~ELINK_FEATURE_CONFIG_AUTOGREEEN_ENABLED;
    } else if (config & PORT_FEAT_CFG_AUTOGREEEN_ENABLED) {
        sc->link_params.feature_config_flags |=
            ELINK_FEATURE_CONFIG_AUTOGREEEN_ENABLED;
    }


    eee_mode =
        (((SHMEM_RD(sc, dev_info.port_feature_config[port].eee_power_mode)) &
          PORT_FEAT_CFG_EEE_POWER_MODE_MASK) >>
         PORT_FEAT_CFG_EEE_POWER_MODE_SHIFT);
    if (eee_mode != PORT_FEAT_CFG_EEE_POWER_MODE_DISABLED) {
        sc->link_params.eee_mode = (ELINK_EEE_MODE_ADV_LPI |
                                    ELINK_EEE_MODE_ENABLE_LPI |
                                    ELINK_EEE_MODE_OUTPUT_TIME);
    } else {
        sc->link_params.eee_mode = 0;
    }


    bxe_media_detect(sc);
 ELINK_DEBUG_P1(sc, "detected media type\n", sc->media);
}
