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
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_INTR ; 
 int HC_CONFIG_0_REG_ATTN_BIT_EN_0 ; 
 int HC_CONFIG_0_REG_INT_LINE_EN_0 ; 
 int HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0 ; 
 int HC_CONFIG_0_REG_SINGLE_ISR_EN_0 ; 
 int HC_REG_CONFIG_0 ; 
 int HC_REG_CONFIG_1 ; 
 int HC_REG_INT_MASK ; 
 int FUNC3 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int,int) ; 
 int FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(struct bxe_softc *sc)
{
    int port = FUNC5(sc);
    uint32_t addr = (port) ? HC_REG_CONFIG_1 : HC_REG_CONFIG_0;
    uint32_t val = FUNC3(sc, addr);

    /*
     * In E1 we must use only PCI configuration space to disable MSI/MSIX
     * capablility. It's forbidden to disable IGU_PF_CONF_MSI_MSIX_EN in HC
     * block
     */
    if (FUNC2(sc)) {
        /*
         * Since IGU_PF_CONF_MSI_MSIX_EN still always on use mask register
         * to prevent from HC sending interrupts after we exit the function
         */
        FUNC4(sc, (HC_REG_INT_MASK + port*4), 0);

        val &= ~(HC_CONFIG_0_REG_SINGLE_ISR_EN_0 |
                 HC_CONFIG_0_REG_INT_LINE_EN_0 |
                 HC_CONFIG_0_REG_ATTN_BIT_EN_0);
    } else {
        val &= ~(HC_CONFIG_0_REG_SINGLE_ISR_EN_0 |
                 HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0 |
                 HC_CONFIG_0_REG_INT_LINE_EN_0 |
                 HC_CONFIG_0_REG_ATTN_BIT_EN_0);
    }

    FUNC0(sc, DBG_INTR, "write %x to HC %d (addr 0x%x)\n", val, port, addr);

    /* flush all outstanding writes */
    FUNC6();

    FUNC4(sc, addr, val);
    if (FUNC3(sc, addr) != val) {
        FUNC1(sc, "proper val not read from HC IGU!\n");
    }
}