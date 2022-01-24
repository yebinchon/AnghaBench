#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_11__ {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
struct event_ring_data {int /*<<< orphan*/  sb_id; int /*<<< orphan*/  index_id; int /*<<< orphan*/  producer; TYPE_5__ base_addr; TYPE_1__ member_0; } ;
struct cmng_struct_per_port {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  paddr; } ;
struct TYPE_10__ {scalar_t__ pmf; } ;
struct TYPE_9__ {int /*<<< orphan*/  line_speed; } ;
struct TYPE_8__ {int /*<<< orphan*/  paddr; } ;
struct bxe_softc {int /*<<< orphan*/  eq_prod; TYPE_6__ eq_dma; int /*<<< orphan*/  cmng; TYPE_4__ port; TYPE_3__ link_vars; int /*<<< orphan*/  spq_prod_idx; TYPE_2__ spq_dma; int /*<<< orphan*/  ifp; } ;
struct bxe_func_init_params {int func_flgs; int pf_id; int func_id; int /*<<< orphan*/  spq_prod; int /*<<< orphan*/  spq_map; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int BXE_IGU_STAS_MSG_PF_CNT ; 
 int BXE_IGU_STAS_MSG_VF_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DEF_SB_ID ; 
 int FUNC_FLG_LEADING ; 
 int FUNC_FLG_SPQ ; 
 int FUNC_FLG_STATS ; 
 int FUNC_FLG_TPA ; 
 int /*<<< orphan*/  HC_SP_INDEX_EQ_CONS ; 
 int IFCAP_LRO ; 
 scalar_t__ IGU_REG_STATISTIC_NUM_MESSAGE_SENT ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*) ; 
 int FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  SPEED_10000 ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*,struct bxe_func_init_params*) ; 
 int /*<<< orphan*/  FUNC10 (struct bxe_softc*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct bxe_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct bxe_softc*,struct event_ring_data*,int) ; 

__attribute__((used)) static void
FUNC15(struct bxe_softc *sc)
{
    struct bxe_func_init_params func_init = { 0 };
    struct event_ring_data eq_data = { 0 };
    uint16_t flags;

    if (!FUNC0(sc)) {
        /* reset IGU PF statistics: MSIX + ATTN */
        /* PF */
        FUNC2(sc,
               (IGU_REG_STATISTIC_NUM_MESSAGE_SENT +
                (BXE_IGU_STAS_MSG_VF_CNT * 4) +
                ((FUNC1(sc) ? FUNC3(sc) : FUNC5(sc)) * 4)),
               0);
        /* ATTN */
        FUNC2(sc,
               (IGU_REG_STATISTIC_NUM_MESSAGE_SENT +
                (BXE_IGU_STAS_MSG_VF_CNT * 4) +
                (BXE_IGU_STAS_MSG_PF_CNT * 4) +
                ((FUNC1(sc) ? FUNC3(sc) : FUNC5(sc)) * 4)),
               0);
    }

    /* function setup flags */
    flags = (FUNC_FLG_STATS | FUNC_FLG_LEADING | FUNC_FLG_SPQ);

    /*
     * This flag is relevant for E1x only.
     * E2 doesn't have a TPA configuration in a function level.
     */
    flags |= (FUNC11(sc->ifp) & IFCAP_LRO) ? FUNC_FLG_TPA : 0;

    func_init.func_flgs = flags;
    func_init.pf_id     = FUNC3(sc);
    func_init.func_id   = FUNC3(sc);
    func_init.spq_map   = sc->spq_dma.paddr;
    func_init.spq_prod  = sc->spq_prod_idx;

    FUNC9(sc, &func_init);

    FUNC12(&sc->cmng, 0, sizeof(struct cmng_struct_per_port));

    /*
     * Congestion management values depend on the link rate.
     * There is no active link so initial link rate is set to 10Gbps.
     * When the link comes up the congestion management values are
     * re-calculated according to the actual link rate.
     */
    sc->link_vars.line_speed = SPEED_10000;
    FUNC8(sc, TRUE, FUNC10(sc));

    /* Only the PMF sets the HW */
    if (sc->port.pmf) {
        FUNC13(sc, &sc->cmng, FUNC4(sc));
    }

    /* init Event Queue - PCI bus guarantees correct endainity */
    eq_data.base_addr.hi = FUNC6(sc->eq_dma.paddr);
    eq_data.base_addr.lo = FUNC7(sc->eq_dma.paddr);
    eq_data.producer     = sc->eq_prod;
    eq_data.index_id     = HC_SP_INDEX_EQ_CONS;
    eq_data.sb_id        = DEF_SB_ID;
    FUNC14(sc, &eq_data, FUNC3(sc));
}