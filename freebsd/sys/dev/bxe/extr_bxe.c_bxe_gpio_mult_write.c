
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int) ;
 int BLOGE (struct bxe_softc*,char*,int,int,int) ;
 int DBG_PHY ;
 int HW_LOCK_RESOURCE_GPIO ;
 int MISC_REGISTERS_GPIO_CLR_POS ;
 int MISC_REGISTERS_GPIO_FLOAT_POS ;



 int MISC_REGISTERS_GPIO_SET_POS ;
 int MISC_REG_GPIO ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int bxe_acquire_hw_lock (struct bxe_softc*,int ) ;
 int bxe_release_hw_lock (struct bxe_softc*,int ) ;

__attribute__((used)) static int
bxe_gpio_mult_write(struct bxe_softc *sc,
                    uint8_t pins,
                    uint32_t mode)
{
    uint32_t gpio_reg;



    bxe_acquire_hw_lock(sc, HW_LOCK_RESOURCE_GPIO);


    gpio_reg = REG_RD(sc, MISC_REG_GPIO);
    gpio_reg &= ~(pins << MISC_REGISTERS_GPIO_FLOAT_POS);
    gpio_reg &= ~(pins << MISC_REGISTERS_GPIO_CLR_POS);
    gpio_reg &= ~(pins << MISC_REGISTERS_GPIO_SET_POS);

    switch (mode) {
    case 128:
        BLOGD(sc, DBG_PHY, "Set GPIO 0x%x -> output low\n", pins);

        gpio_reg |= (pins << MISC_REGISTERS_GPIO_CLR_POS);
        break;

    case 129:
        BLOGD(sc, DBG_PHY, "Set GPIO 0x%x -> output high\n", pins);

        gpio_reg |= (pins << MISC_REGISTERS_GPIO_SET_POS);
        break;

    case 130:
        BLOGD(sc, DBG_PHY, "Set GPIO 0x%x -> input\n", pins);

        gpio_reg |= (pins << MISC_REGISTERS_GPIO_FLOAT_POS);
        break;

    default:
        BLOGE(sc, "Invalid GPIO mode assignment pins 0x%x mode 0x%x"
            " gpio_reg 0x%x\n", pins, mode, gpio_reg);
        bxe_release_hw_lock(sc, HW_LOCK_RESOURCE_GPIO);
        return (-1);
    }

    REG_WR(sc, MISC_REG_GPIO, gpio_reg);
    bxe_release_hw_lock(sc, HW_LOCK_RESOURCE_GPIO);

    return (0);
}
