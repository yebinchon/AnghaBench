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
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int,int) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_SPIO ; 
 int /*<<< orphan*/  MISC_REG_SPIO ; 
 int MISC_SPIO_CLR_POS ; 
 int MISC_SPIO_FLOAT ; 
 int MISC_SPIO_FLOAT_POS ; 
#define  MISC_SPIO_INPUT_HI_Z 130 
#define  MISC_SPIO_OUTPUT_HIGH 129 
#define  MISC_SPIO_OUTPUT_LOW 128 
 int MISC_SPIO_SET_POS ; 
 int MISC_SPIO_SPIO4 ; 
 int MISC_SPIO_SPIO5 ; 
 int FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct bxe_softc *sc,
             int              spio,
             uint32_t         mode)
{
    uint32_t spio_reg;

    /* Only 2 SPIOs are configurable */
    if ((spio != MISC_SPIO_SPIO4) && (spio != MISC_SPIO_SPIO5)) {
        FUNC1(sc, "Invalid SPIO 0x%x mode 0x%x\n", spio, mode);
        return (-1);
    }

    FUNC4(sc, HW_LOCK_RESOURCE_SPIO);

    /* read SPIO and mask except the float bits */
    spio_reg = (FUNC2(sc, MISC_REG_SPIO) & MISC_SPIO_FLOAT);

    switch (mode) {
    case MISC_SPIO_OUTPUT_LOW:
        FUNC0(sc, DBG_LOAD, "Set SPIO 0x%x -> output low\n", spio);
        /* clear FLOAT and set CLR */
        spio_reg &= ~(spio << MISC_SPIO_FLOAT_POS);
        spio_reg |=  (spio << MISC_SPIO_CLR_POS);
        break;

    case MISC_SPIO_OUTPUT_HIGH:
        FUNC0(sc, DBG_LOAD, "Set SPIO 0x%x -> output high\n", spio);
        /* clear FLOAT and set SET */
        spio_reg &= ~(spio << MISC_SPIO_FLOAT_POS);
        spio_reg |=  (spio << MISC_SPIO_SET_POS);
        break;

    case MISC_SPIO_INPUT_HI_Z:
        FUNC0(sc, DBG_LOAD, "Set SPIO 0x%x -> input\n", spio);
        /* set FLOAT */
        spio_reg |= (spio << MISC_SPIO_FLOAT_POS);
        break;

    default:
        break;
    }

    FUNC3(sc, MISC_REG_SPIO, spio_reg);
    FUNC5(sc, HW_LOCK_RESOURCE_SPIO);

    return (0);
}