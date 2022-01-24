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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_6__ {void* lo; void* hi; } ;
struct TYPE_7__ {TYPE_2__ update_data_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; void* conn_and_cmd_data; } ;
struct eth_spe {TYPE_3__ data; TYPE_1__ hdr; } ;
struct TYPE_8__ {scalar_t__ paddr; } ;
struct bxe_softc {int /*<<< orphan*/  eq_spq_left; int /*<<< orphan*/  cq_spq_left; scalar_t__ spq; scalar_t__ spq_prod_bd; TYPE_4__ spq_dma; int /*<<< orphan*/  spq_prod_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 scalar_t__ FUNC4 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_SP ; 
 int FUNC6 (struct bxe_softc*,int) ; 
 int FUNC7 (struct bxe_softc*) ; 
 int SPE_HDR_T_CMD_ID_SHIFT ; 
 int SPE_HDR_T_CONN_TYPE ; 
 int SPE_HDR_T_CONN_TYPE_SHIFT ; 
 int SPE_HDR_T_FUNCTION_ID ; 
 int SPE_HDR_T_FUNCTION_ID_SHIFT ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int,int) ; 
 struct eth_spe* FUNC13 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct bxe_softc*) ; 
 int /*<<< orphan*/  func_rdata ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 void* FUNC16 (int) ; 

int
FUNC17(struct bxe_softc *sc,
            int              command,
            int              cid,
            uint32_t         data_hi,
            uint32_t         data_lo,
            int              cmd_type)
{
    struct eth_spe *spe;
    uint16_t type;
    int common;

    common = FUNC12(command, cmd_type);

    FUNC3(sc);

    if (common) {
        if (!FUNC10(&sc->eq_spq_left)) {
            FUNC1(sc, "EQ ring is full!\n");
            FUNC5(sc);
            return (-1);
        }
    } else {
        if (!FUNC10(&sc->cq_spq_left)) {
            FUNC1(sc, "SPQ ring is full!\n");
            FUNC5(sc);
            return (-1);
        }
    }

    spe = FUNC13(sc);

    /* CID needs port number to be encoded int it */
    spe->hdr.conn_and_cmd_data =
        FUNC16((command << SPE_HDR_T_CMD_ID_SHIFT) | FUNC6(sc, cid));

    type = (cmd_type << SPE_HDR_T_CONN_TYPE_SHIFT) & SPE_HDR_T_CONN_TYPE;

    /* TBD: Check if it works for VFs */
    type |= ((FUNC7(sc) << SPE_HDR_T_FUNCTION_ID_SHIFT) &
             SPE_HDR_T_FUNCTION_ID);

    spe->hdr.type = FUNC15(type);

    spe->data.update_data_addr.hi = FUNC16(data_hi);
    spe->data.update_data_addr.lo = FUNC16(data_lo);

    /*
     * It's ok if the actual decrement is issued towards the memory
     * somewhere between the lock and unlock. Thus no more explict
     * memory barrier is needed.
     */
    if (common) {
        FUNC11(&sc->eq_spq_left, 1);
    } else {
        FUNC11(&sc->cq_spq_left, 1);
    }

    FUNC0(sc, DBG_SP, "SPQE -> %#jx\n", (uintmax_t)sc->spq_dma.paddr);
    FUNC0(sc, DBG_SP, "FUNC_RDATA -> %p / %#jx\n",
          FUNC2(sc, func_rdata), (uintmax_t)FUNC4(sc, func_rdata));
    FUNC0(sc, DBG_SP,
          "SPQE[%x] (%x:%x) (cmd, common?) (%d,%d) hw_cid %x data (%x:%x) type(0x%x) left (CQ, EQ) (%lx,%lx)\n",
          sc->spq_prod_idx,
          (uint32_t)FUNC8(sc->spq_dma.paddr),
          (uint32_t)(FUNC9(sc->spq_dma.paddr) + (uint8_t *)sc->spq_prod_bd - (uint8_t *)sc->spq),
          command,
          common,
          FUNC6(sc, cid),
          data_hi,
          data_lo,
          type,
          FUNC10(&sc->cq_spq_left),
          FUNC10(&sc->eq_spq_left));

    FUNC14(sc);

    FUNC5(sc);
    return (0);
}