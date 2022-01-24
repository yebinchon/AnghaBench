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
struct bxe_softc {int flags; int /*<<< orphan*/  sp_state; TYPE_1__* fp; int /*<<< orphan*/  rss_conf_obj; int /*<<< orphan*/  vlans_pool; int /*<<< orphan*/  macs_pool; int /*<<< orphan*/  mcast_obj; int /*<<< orphan*/  rx_mode_obj; } ;
typedef  int /*<<< orphan*/  ecore_obj_type ;
struct TYPE_2__ {int /*<<< orphan*/  index; int /*<<< orphan*/  cl_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int BXE_TX_SWITCHING ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  ECORE_FILTER_MCAST_PENDING ; 
 int /*<<< orphan*/  ECORE_FILTER_RSS_CONF_PENDING ; 
 int /*<<< orphan*/  ECORE_OBJ_TYPE_RX ; 
 int /*<<< orphan*/  ECORE_OBJ_TYPE_RX_TX ; 
 int FUNC3 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bxe_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct bxe_softc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcast_rdata ; 
 int /*<<< orphan*/  rss_rdata ; 

__attribute__((used)) static inline void
FUNC12(struct bxe_softc *sc)
{
    /* mcast rules must be added to tx if tx switching is enabled */
    ecore_obj_type o_type =
        (sc->flags & BXE_TX_SWITCHING) ? ECORE_OBJ_TYPE_RX_TX :
                                         ECORE_OBJ_TYPE_RX;

    /* RX_MODE controlling object */
    FUNC10(sc, &sc->rx_mode_obj);

    /* multicast configuration controlling object */
    FUNC8(sc,
                         &sc->mcast_obj,
                         sc->fp[0].cl_id,
                         sc->fp[0].index,
                         FUNC4(sc),
                         FUNC4(sc),
                         FUNC0(sc, mcast_rdata),
                         FUNC1(sc, mcast_rdata),
                         ECORE_FILTER_MCAST_PENDING,
                         &sc->sp_state,
                         o_type);

    /* Setup CAM credit pools */
    FUNC7(sc,
                               &sc->macs_pool,
                               FUNC4(sc),
                               FUNC2(sc) ? FUNC6(sc) :
                                                 FUNC5(sc));

    FUNC11(sc,
                                &sc->vlans_pool,
                                FUNC3(sc) >> 1,
                                FUNC2(sc) ? FUNC6(sc) :
                                                  FUNC5(sc));

    /* RSS configuration object */
    FUNC9(sc,
                              &sc->rss_conf_obj,
                              sc->fp[0].cl_id,
                              sc->fp[0].index,
                              FUNC4(sc),
                              FUNC4(sc),
                              FUNC0(sc, rss_rdata),
                              FUNC1(sc, rss_rdata),
                              ECORE_FILTER_RSS_CONF_PENDING,
                              &sc->sp_state, ECORE_OBJ_TYPE_RX);
}