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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  DBG_PHY ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_GPIO ; 
 int MISC_REGISTERS_GPIO_3 ; 
 int MISC_REGISTERS_GPIO_CLR_POS ; 
 int MISC_REGISTERS_GPIO_FLOAT ; 
 int MISC_REGISTERS_GPIO_FLOAT_POS ; 
#define  MISC_REGISTERS_GPIO_INPUT_HI_Z 130 
#define  MISC_REGISTERS_GPIO_OUTPUT_HIGH 129 
#define  MISC_REGISTERS_GPIO_OUTPUT_LOW 128 
 int MISC_REGISTERS_GPIO_PORT_SHIFT ; 
 int MISC_REGISTERS_GPIO_SET_POS ; 
 int /*<<< orphan*/  MISC_REG_GPIO ; 
 int /*<<< orphan*/  NIG_REG_PORT_SWAP ; 
 int /*<<< orphan*/  NIG_REG_STRAP_OVERRIDE ; 
 int FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct bxe_softc *sc,
               int              gpio_num,
               uint32_t         mode,
               uint8_t          port)
{
    /* The GPIO should be swapped if swap register is set and active */
    int gpio_port = ((FUNC2(sc, NIG_REG_PORT_SWAP) &&
                      FUNC2(sc, NIG_REG_STRAP_OVERRIDE)) ^ port);
    int gpio_shift = (gpio_num +
                      (gpio_port ? MISC_REGISTERS_GPIO_PORT_SHIFT : 0));
    uint32_t gpio_mask = (1 << gpio_shift);
    uint32_t gpio_reg;

    if (gpio_num > MISC_REGISTERS_GPIO_3) {
        FUNC1(sc, "Invalid GPIO %d mode 0x%x port 0x%x gpio_port %d"
            " gpio_shift %d gpio_mask 0x%x\n",
            gpio_num, mode, port, gpio_port, gpio_shift, gpio_mask);
        return (-1);
    }

    FUNC4(sc, HW_LOCK_RESOURCE_GPIO);

    /* read GPIO and mask except the float bits */
    gpio_reg = (FUNC2(sc, MISC_REG_GPIO) & MISC_REGISTERS_GPIO_FLOAT);

    switch (mode) {
    case MISC_REGISTERS_GPIO_OUTPUT_LOW:
        FUNC0(sc, DBG_PHY,
              "Set GPIO %d (shift %d) -> output low\n",
              gpio_num, gpio_shift);
        /* clear FLOAT and set CLR */
        gpio_reg &= ~(gpio_mask << MISC_REGISTERS_GPIO_FLOAT_POS);
        gpio_reg |=  (gpio_mask << MISC_REGISTERS_GPIO_CLR_POS);
        break;

    case MISC_REGISTERS_GPIO_OUTPUT_HIGH:
        FUNC0(sc, DBG_PHY,
              "Set GPIO %d (shift %d) -> output high\n",
              gpio_num, gpio_shift);
        /* clear FLOAT and set SET */
        gpio_reg &= ~(gpio_mask << MISC_REGISTERS_GPIO_FLOAT_POS);
        gpio_reg |=  (gpio_mask << MISC_REGISTERS_GPIO_SET_POS);
        break;

    case MISC_REGISTERS_GPIO_INPUT_HI_Z:
        FUNC0(sc, DBG_PHY,
              "Set GPIO %d (shift %d) -> input\n",
              gpio_num, gpio_shift);
        /* set FLOAT */
        gpio_reg |= (gpio_mask << MISC_REGISTERS_GPIO_FLOAT_POS);
        break;

    default:
        break;
    }

    FUNC3(sc, MISC_REG_GPIO, gpio_reg);
    FUNC5(sc, HW_LOCK_RESOURCE_GPIO);

    return (0);
}