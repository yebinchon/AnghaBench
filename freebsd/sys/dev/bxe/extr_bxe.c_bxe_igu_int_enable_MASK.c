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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct TYPE_2__ {scalar_t__ pmf; } ;
struct bxe_softc {scalar_t__ interrupt_mode; int intr_count; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  DBG_INTR ; 
 scalar_t__ FALSE ; 
 int IGU_PF_CONF_ATTN_BIT_EN ; 
 int IGU_PF_CONF_FUNC_EN ; 
 int IGU_PF_CONF_INT_LINE_EN ; 
 int IGU_PF_CONF_MSI_MSIX_EN ; 
 int IGU_PF_CONF_SINGLE_ISR_EN ; 
 int /*<<< orphan*/  IGU_REG_LEADING_EDGE_LATCH ; 
 int /*<<< orphan*/  IGU_REG_PF_CONFIGURATION ; 
 int /*<<< orphan*/  IGU_REG_TRAILING_EDGE_LATCH ; 
 scalar_t__ INTR_MODE_MSI ; 
 scalar_t__ INTR_MODE_MSIX ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct bxe_softc*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(struct bxe_softc *sc)
{
    uint32_t val;
    uint8_t msix = (sc->interrupt_mode == INTR_MODE_MSIX) ? TRUE : FALSE;
    uint8_t single_msix = ((sc->interrupt_mode == INTR_MODE_MSIX) &&
                           (sc->intr_count == 1)) ? TRUE : FALSE;
    uint8_t msi = (sc->interrupt_mode == INTR_MODE_MSI) ? TRUE : FALSE;

    val = FUNC2(sc, IGU_REG_PF_CONFIGURATION);

    if (msix) {
        val &= ~(IGU_PF_CONF_INT_LINE_EN |
                 IGU_PF_CONF_SINGLE_ISR_EN);
        val |= (IGU_PF_CONF_MSI_MSIX_EN |
                IGU_PF_CONF_ATTN_BIT_EN);
        if (single_msix) {
            val |= IGU_PF_CONF_SINGLE_ISR_EN;
        }
    } else if (msi) {
        val &= ~IGU_PF_CONF_INT_LINE_EN;
        val |= (IGU_PF_CONF_MSI_MSIX_EN |
                IGU_PF_CONF_ATTN_BIT_EN |
                IGU_PF_CONF_SINGLE_ISR_EN);
    } else {
        val &= ~IGU_PF_CONF_MSI_MSIX_EN;
        val |= (IGU_PF_CONF_INT_LINE_EN |
                IGU_PF_CONF_ATTN_BIT_EN |
                IGU_PF_CONF_SINGLE_ISR_EN);
    }

    /* clean previous status - need to configure igu prior to ack*/
    if ((!msix) || single_msix) {
        FUNC3(sc, IGU_REG_PF_CONFIGURATION, val);
        FUNC5(sc);
    }

    val |= IGU_PF_CONF_FUNC_EN;

    FUNC0(sc, DBG_INTR, "write 0x%x to IGU mode %s\n",
          val, ((msix) ? "MSI-X" : ((msi) ? "MSI" : "INTx")));

    FUNC3(sc, IGU_REG_PF_CONFIGURATION, val);

    FUNC6();

    /* init leading/trailing edge */
    if (FUNC1(sc)) {
        val = (0xee0f | (1 << (FUNC4(sc) + 4)));
        if (sc->port.pmf) {
            /* enable nig and gpio3 attention */
            val |= 0x1100;
        }
    } else {
        val = 0xffff;
    }

    FUNC3(sc, IGU_REG_TRAILING_EDGE_LATCH, val);
    FUNC3(sc, IGU_REG_LEADING_EDGE_LATCH, val);

    /* make sure that interrupts are indeed enabled from here on */
    FUNC6();
}