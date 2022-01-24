#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct elink_params {scalar_t__* req_line_speed; int feature_config_flags; int* speed_cap_mask; int /*<<< orphan*/  loopback_mode; } ;
struct TYPE_2__ {scalar_t__ link_up; } ;
struct bxe_softc {struct elink_params link_params; TYPE_1__ link_vars; } ;

/* Variables and functions */
 int FUNC0 (struct bxe_softc*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 scalar_t__ FUNC3 (struct bxe_softc*) ; 
 scalar_t__ FUNC4 (struct bxe_softc*) ; 
 int ELINK_FEATURE_CONFIG_EMUL_DISABLE_BMAC ; 
 int ELINK_FEATURE_CONFIG_EMUL_DISABLE_EMAC ; 
 int ELINK_FEATURE_CONFIG_EMUL_DISABLE_UMAC ; 
 int ELINK_FEATURE_CONFIG_EMUL_DISABLE_XMAC ; 
 int /*<<< orphan*/  ELINK_LOOPBACK_EXT ; 
 int /*<<< orphan*/  ELINK_LOOPBACK_XGXS ; 
 scalar_t__ ELINK_SPEED_1000 ; 
 scalar_t__ ELINK_SPEED_10000 ; 
 int LOAD_DIAG ; 
 int LOAD_LOOPBACK_EXT ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10G ; 
 int /*<<< orphan*/  STATS_EVENT_LINK_UP ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*) ; 
 int FUNC7 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct elink_params*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC14(struct bxe_softc *sc,
                     int              load_mode)
{
    int rc, cfg_idx = FUNC7(sc);
    uint16_t req_line_speed = sc->link_params.req_line_speed[cfg_idx];
    struct elink_params *lp = &sc->link_params;

    FUNC11(sc);

    if (FUNC4(sc)) {
        uint32_t bond = FUNC0(sc);
        uint32_t feat = 0;

        if (FUNC1(sc) && FUNC3(sc)) {
            feat |= ELINK_FEATURE_CONFIG_EMUL_DISABLE_BMAC;
        } else if (bond & 0x4) {
            if (FUNC2(sc)) {
                feat |= ELINK_FEATURE_CONFIG_EMUL_DISABLE_XMAC;
            } else {
                feat |= ELINK_FEATURE_CONFIG_EMUL_DISABLE_BMAC;
            }
        } else if (bond & 0x8) {
            if (FUNC2(sc)) {
                feat |= ELINK_FEATURE_CONFIG_EMUL_DISABLE_UMAC;
            } else {
                feat |= ELINK_FEATURE_CONFIG_EMUL_DISABLE_EMAC;
            }
        }

        /* disable EMAC for E3 and above */
        if (bond & 0x2) {
            feat |= ELINK_FEATURE_CONFIG_EMUL_DISABLE_EMAC;
        }

        sc->link_params.feature_config_flags |= feat;
    }

    FUNC5(sc);

    if (load_mode == LOAD_DIAG) {
        lp->loopback_mode = ELINK_LOOPBACK_XGXS;
        /* Prefer doing PHY loopback at 10G speed, if possible */
        if (lp->req_line_speed[cfg_idx] < ELINK_SPEED_10000) {
            if (lp->speed_cap_mask[cfg_idx] &
                PORT_HW_CFG_SPEED_CAPABILITY_D0_10G) {
                lp->req_line_speed[cfg_idx] = ELINK_SPEED_10000;
            } else {
                lp->req_line_speed[cfg_idx] = ELINK_SPEED_1000;
            }
        }
    }

    if (load_mode == LOAD_LOOPBACK_EXT) {
        lp->loopback_mode = ELINK_LOOPBACK_EXT;
    }

    rc = FUNC13(&sc->link_params, &sc->link_vars);

    FUNC10(sc);

    FUNC6(sc);

    if (sc->link_vars.link_up) {
        FUNC12(sc, STATS_EVENT_LINK_UP);
        FUNC8(sc);
    }

    if (!FUNC4(sc)) {
        FUNC9(sc);
    }

    sc->link_params.req_line_speed[cfg_idx] = req_line_speed;
    return (rc);
}