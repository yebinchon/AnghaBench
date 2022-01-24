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
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int,int,int,...) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_INTR ; 
 scalar_t__ FALSE ; 
 int HC_CONFIG_0_REG_ATTN_BIT_EN_0 ; 
 int HC_CONFIG_0_REG_INT_LINE_EN_0 ; 
 int HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0 ; 
 int HC_CONFIG_0_REG_SINGLE_ISR_EN_0 ; 
 int HC_REG_CONFIG_0 ; 
 int HC_REG_CONFIG_1 ; 
 int HC_REG_INT_MASK ; 
 int HC_REG_LEADING_EDGE_0 ; 
 int HC_REG_TRAILING_EDGE_0 ; 
 scalar_t__ INTR_MODE_MSI ; 
 scalar_t__ INTR_MODE_MSIX ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int FUNC3 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int,int) ; 
 int FUNC5 (struct bxe_softc*) ; 
 int FUNC6 (struct bxe_softc*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(struct bxe_softc *sc)
{
    int port = FUNC5(sc);
    uint32_t addr = (port) ? HC_REG_CONFIG_1 : HC_REG_CONFIG_0;
    uint32_t val = FUNC3(sc, addr);
    uint8_t msix = (sc->interrupt_mode == INTR_MODE_MSIX) ? TRUE : FALSE;
    uint8_t single_msix = ((sc->interrupt_mode == INTR_MODE_MSIX) &&
                           (sc->intr_count == 1)) ? TRUE : FALSE;
    uint8_t msi = (sc->interrupt_mode == INTR_MODE_MSI) ? TRUE : FALSE;

    if (msix) {
        val &= ~(HC_CONFIG_0_REG_SINGLE_ISR_EN_0 |
                 HC_CONFIG_0_REG_INT_LINE_EN_0);
        val |= (HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0 |
                HC_CONFIG_0_REG_ATTN_BIT_EN_0);
        if (single_msix) {
            val |= HC_CONFIG_0_REG_SINGLE_ISR_EN_0;
        }
    } else if (msi) {
        val &= ~HC_CONFIG_0_REG_INT_LINE_EN_0;
        val |= (HC_CONFIG_0_REG_SINGLE_ISR_EN_0 |
                HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0 |
                HC_CONFIG_0_REG_ATTN_BIT_EN_0);
    } else {
        val |= (HC_CONFIG_0_REG_SINGLE_ISR_EN_0 |
                HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0 |
                HC_CONFIG_0_REG_INT_LINE_EN_0 |
                HC_CONFIG_0_REG_ATTN_BIT_EN_0);

        if (!FUNC1(sc)) {
            FUNC0(sc, DBG_INTR, "write %x to HC %d (addr 0x%x)\n",
                  val, port, addr);

            FUNC4(sc, addr, val);

            val &= ~HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0;
        }
    }

    if (FUNC1(sc)) {
        FUNC4(sc, (HC_REG_INT_MASK + port*4), 0x1FFFF);
    }

    FUNC0(sc, DBG_INTR, "write %x to HC %d (addr 0x%x) mode %s\n",
          val, port, addr, ((msix) ? "MSI-X" : ((msi) ? "MSI" : "INTx")));

    FUNC4(sc, addr, val);

    /* ensure that HC_CONFIG is written before leading/trailing edge config */
    FUNC7();

    if (!FUNC1(sc)) {
        /* init leading/trailing edge */
        if (FUNC2(sc)) {
            val = (0xee0f | (1 << (FUNC6(sc) + 4)));
            if (sc->port.pmf) {
                /* enable nig and gpio3 attention */
                val |= 0x1100;
            }
        } else {
            val = 0xffff;
        }

        FUNC4(sc, (HC_REG_TRAILING_EDGE_0 + port*8), val);
        FUNC4(sc, (HC_REG_LEADING_EDGE_0 + port*8), val);
    }

    /* make sure that interrupts are indeed enabled from here on */
    FUNC7();
}