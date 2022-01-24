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
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int,int,int,int,int) ; 
 int MISC_REGISTERS_GPIO_3 ; 
 int MISC_REGISTERS_GPIO_PORT_SHIFT ; 
 int /*<<< orphan*/  MISC_REG_GPIO ; 
 int /*<<< orphan*/  NIG_REG_PORT_SWAP ; 
 int /*<<< orphan*/  NIG_REG_STRAP_OVERRIDE ; 
 int FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct bxe_softc *sc,
              int              gpio_num,
              uint8_t          port)
{
    /* The GPIO should be swapped if swap register is set and active */
    int gpio_port = ((FUNC1(sc, NIG_REG_PORT_SWAP) &&
                      FUNC1(sc, NIG_REG_STRAP_OVERRIDE)) ^ port);
    int gpio_shift = (gpio_num +
                      (gpio_port ? MISC_REGISTERS_GPIO_PORT_SHIFT : 0));
    uint32_t gpio_mask = (1 << gpio_shift);
    uint32_t gpio_reg;

    if (gpio_num > MISC_REGISTERS_GPIO_3) {
        FUNC0(sc, "Invalid GPIO %d port 0x%x gpio_port %d gpio_shift %d"
            " gpio_mask 0x%x\n", gpio_num, port, gpio_port, gpio_shift,
            gpio_mask);
        return (-1);
    }

    /* read GPIO value */
    gpio_reg = FUNC1(sc, MISC_REG_GPIO);

    /* get the requested pin value */
    return ((gpio_reg & gpio_mask) == gpio_mask) ? 1 : 0;
}