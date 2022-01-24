#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_BRB1 ; 
 int /*<<< orphan*/  BLOCK_PRS ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int) ; 
 int* FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ CFC_REG_DEBUG0 ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 scalar_t__ FUNC3 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ GRCBASE_MISC ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_1_CLEAR ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_1_SET ; 
 int /*<<< orphan*/  NIG_REG_INGRESS_EOP_LB_EMPTY ; 
 int /*<<< orphan*/  NIG_REG_INGRESS_EOP_LB_FIFO ; 
 scalar_t__ NIG_REG_PRS_REQ_IN_EN ; 
 int /*<<< orphan*/  NIG_REG_STAT2_BRB_OCTET ; 
 int /*<<< orphan*/  PHASE_COMMON ; 
 scalar_t__ PRS_REG_CFC_SEARCH_INITIAL_CREDIT ; 
 scalar_t__ PRS_REG_NIC_MODE ; 
 int /*<<< orphan*/  PRS_REG_NUM_OF_PACKETS ; 
 int FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,scalar_t__,int) ; 
 scalar_t__ TCM_REG_PRS_IFEN ; 
 scalar_t__ TSDM_REG_ENABLE_IN1 ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * wb_data ; 

__attribute__((used)) static int
FUNC11(struct bxe_softc *sc)
{
    int factor;
    int count, i;
    uint32_t val = 0;

    if (FUNC3(sc)) {
        factor = 120;
    } else if (FUNC2(sc)) {
        factor = 200;
    } else {
        factor = 1;
    }

    /* disable inputs of parser neighbor blocks */
    FUNC7(sc, TSDM_REG_ENABLE_IN1, 0x0);
    FUNC7(sc, TCM_REG_PRS_IFEN, 0x0);
    FUNC7(sc, CFC_REG_DEBUG0, 0x1);
    FUNC7(sc, NIG_REG_PRS_REQ_IN_EN, 0x0);

    /*  write 0 to parser credits for CFC search request */
    FUNC7(sc, PRS_REG_CFC_SEARCH_INITIAL_CREDIT, 0x0);

    /* send Ethernet packet */
    FUNC8(sc);

    /* TODO do i reset NIG statistic? */
    /* Wait until NIG register shows 1 packet of size 0x10 */
    count = 1000 * factor;
    while (count) {
        FUNC9(sc, NIG_REG_STAT2_BRB_OCTET, 2);
        val = *FUNC1(sc, wb_data[0]);
        if (val == 0x10) {
            break;
        }

        FUNC5(10000);
        count--;
    }

    if (val != 0x10) {
        FUNC0(sc, "NIG timeout val=0x%x\n", val);
        return (-1);
    }

    /* wait until PRS register shows 1 packet */
    count = (1000 * factor);
    while (count) {
        val = FUNC6(sc, PRS_REG_NUM_OF_PACKETS);
        if (val == 1) {
            break;
        }

        FUNC5(10000);
        count--;
    }

    if (val != 0x1) {
        FUNC0(sc, "PRS timeout val=0x%x\n", val);
        return (-2);
    }

    /* Reset and init BRB, PRS */
    FUNC7(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_CLEAR, 0x03);
    FUNC5(50000);
    FUNC7(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_SET, 0x03);
    FUNC5(50000);
    FUNC10(sc, BLOCK_BRB1, PHASE_COMMON);
    FUNC10(sc, BLOCK_PRS, PHASE_COMMON);

    /* Disable inputs of parser neighbor blocks */
    FUNC7(sc, TSDM_REG_ENABLE_IN1, 0x0);
    FUNC7(sc, TCM_REG_PRS_IFEN, 0x0);
    FUNC7(sc, CFC_REG_DEBUG0, 0x1);
    FUNC7(sc, NIG_REG_PRS_REQ_IN_EN, 0x0);

    /* Write 0 to parser credits for CFC search request */
    FUNC7(sc, PRS_REG_CFC_SEARCH_INITIAL_CREDIT, 0x0);

    /* send 10 Ethernet packets */
    for (i = 0; i < 10; i++) {
        FUNC8(sc);
    }

    /* Wait until NIG register shows 10+1 packets of size 11*0x10 = 0xb0 */
    count = (1000 * factor);
    while (count) {
        FUNC9(sc, NIG_REG_STAT2_BRB_OCTET, 2);
        val = *FUNC1(sc, wb_data[0]);
        if (val == 0xb0) {
            break;
        }

        FUNC5(10000);
        count--;
    }

    if (val != 0xb0) {
        FUNC0(sc, "NIG timeout val=0x%x\n", val);
        return (-3);
    }

    /* Wait until PRS register shows 2 packets */
    val = FUNC6(sc, PRS_REG_NUM_OF_PACKETS);
    if (val != 2) {
        FUNC0(sc, "PRS timeout val=0x%x\n", val);
    }

    /* Write 1 to parser credits for CFC search request */
    FUNC7(sc, PRS_REG_CFC_SEARCH_INITIAL_CREDIT, 0x1);

    /* Wait until PRS register shows 3 packets */
    FUNC5(10000 * factor);

    /* Wait until NIG register shows 1 packet of size 0x10 */
    val = FUNC6(sc, PRS_REG_NUM_OF_PACKETS);
    if (val != 3) {
        FUNC0(sc, "PRS timeout val=0x%x\n", val);
    }

    /* clear NIG EOP FIFO */
    for (i = 0; i < 11; i++) {
        FUNC6(sc, NIG_REG_INGRESS_EOP_LB_FIFO);
    }

    val = FUNC6(sc, NIG_REG_INGRESS_EOP_LB_EMPTY);
    if (val != 1) {
        FUNC0(sc, "clear of NIG failed val=0x%x\n", val);
        return (-4);
    }

    /* Reset and init BRB, PRS, NIG */
    FUNC7(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_CLEAR, 0x03);
    FUNC5(50000);
    FUNC7(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_SET, 0x03);
    FUNC5(50000);
    FUNC10(sc, BLOCK_BRB1, PHASE_COMMON);
    FUNC10(sc, BLOCK_PRS, PHASE_COMMON);
    if (!FUNC4(sc)) {
        /* set NIC mode */
        FUNC7(sc, PRS_REG_NIC_MODE, 1);
    }

    /* Enable inputs of parser neighbor blocks */
    FUNC7(sc, TSDM_REG_ENABLE_IN1, 0x7fffffff);
    FUNC7(sc, TCM_REG_PRS_IFEN, 0x1);
    FUNC7(sc, CFC_REG_DEBUG0, 0x0);
    FUNC7(sc, NIG_REG_PRS_REQ_IN_EN, 0x1);

    return (0);
}