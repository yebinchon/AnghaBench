#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int uint32_t ;
struct TYPE_7__ {int eee_mode; int /*<<< orphan*/  feature_config_flags; int /*<<< orphan*/  switch_cfg; int /*<<< orphan*/ * speed_cap_mask; int /*<<< orphan*/  lane_config; } ;
struct TYPE_5__ {int config; int /*<<< orphan*/ * link_config; } ;
struct bxe_softc {scalar_t__ autogreeen; int /*<<< orphan*/  media; TYPE_3__ link_params; TYPE_1__ port; } ;
struct TYPE_8__ {TYPE_2__* port_feature_config; } ;
struct TYPE_6__ {int /*<<< orphan*/  eee_power_mode; } ;

/* Variables and functions */
 scalar_t__ AUTO_GREEN_FORCE_OFF ; 
 scalar_t__ AUTO_GREEN_FORCE_ON ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ELINK_EEE_MODE_ADV_LPI ; 
 int ELINK_EEE_MODE_ENABLE_LPI ; 
 int ELINK_EEE_MODE_OUTPUT_TIME ; 
 int /*<<< orphan*/  ELINK_FEATURE_CONFIG_AUTOGREEEN_ENABLED ; 
 int PORT_FEAT_CFG_AUTOGREEEN_ENABLED ; 
 int PORT_FEAT_CFG_EEE_POWER_MODE_DISABLED ; 
 int PORT_FEAT_CFG_EEE_POWER_MODE_MASK ; 
 int PORT_FEAT_CFG_EEE_POWER_MODE_SHIFT ; 
 size_t FUNC2 (struct bxe_softc*) ; 
 int FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*) ; 
 TYPE_4__ dev_info ; 

__attribute__((used)) static void
FUNC7(struct bxe_softc *sc)
{
    uint8_t port = FUNC2(sc);
    uint32_t config = sc->port.config;
    uint32_t eee_mode;

    /* shmem data already read in bxe_get_shmem_info() */

    FUNC1(sc, "lane_config=0x%08x speed_cap_mask0=0x%08x "
                        "link_config0=0x%08x\n",
               sc->link_params.lane_config,
               sc->link_params.speed_cap_mask[0],
               sc->port.link_config[0]);
     

    FUNC5(sc, sc->link_params.switch_cfg);
    FUNC4(sc);

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

    /* configure link feature according to nvram value */
    eee_mode =
        (((FUNC3(sc, dev_info.port_feature_config[port].eee_power_mode)) &
          PORT_FEAT_CFG_EEE_POWER_MODE_MASK) >>
         PORT_FEAT_CFG_EEE_POWER_MODE_SHIFT);
    if (eee_mode != PORT_FEAT_CFG_EEE_POWER_MODE_DISABLED) {
        sc->link_params.eee_mode = (ELINK_EEE_MODE_ADV_LPI |
                                    ELINK_EEE_MODE_ENABLE_LPI |
                                    ELINK_EEE_MODE_OUTPUT_TIME);
    } else {
        sc->link_params.eee_mode = 0;
    }

    /* get the media type */
    FUNC6(sc);
	FUNC0(sc, "detected media type\n", sc->media);
}