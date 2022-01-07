
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int,int) ;
 int BLOGE (struct bxe_softc*,char*,int,int,int,int,int,int) ;
 int DBG_PHY ;
 int HW_LOCK_RESOURCE_GPIO ;
 int MISC_REGISTERS_GPIO_3 ;
 int MISC_REGISTERS_GPIO_INT_CLR_POS ;


 int MISC_REGISTERS_GPIO_INT_SET_POS ;
 int MISC_REGISTERS_GPIO_PORT_SHIFT ;
 int MISC_REG_GPIO_INT ;
 int NIG_REG_PORT_SWAP ;
 int NIG_REG_STRAP_OVERRIDE ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int bxe_acquire_hw_lock (struct bxe_softc*,int ) ;
 int bxe_release_hw_lock (struct bxe_softc*,int ) ;

__attribute__((used)) static int
bxe_gpio_int_write(struct bxe_softc *sc,
                   int gpio_num,
                   uint32_t mode,
                   uint8_t port)
{

    int gpio_port = ((REG_RD(sc, NIG_REG_PORT_SWAP) &&
                      REG_RD(sc, NIG_REG_STRAP_OVERRIDE)) ^ port);
    int gpio_shift = (gpio_num +
                      (gpio_port ? MISC_REGISTERS_GPIO_PORT_SHIFT : 0));
    uint32_t gpio_mask = (1 << gpio_shift);
    uint32_t gpio_reg;

    if (gpio_num > MISC_REGISTERS_GPIO_3) {
        BLOGE(sc, "Invalid GPIO %d mode 0x%x port 0x%x gpio_port %d"
            " gpio_shift %d gpio_mask 0x%x\n",
            gpio_num, mode, port, gpio_port, gpio_shift, gpio_mask);
        return (-1);
    }

    bxe_acquire_hw_lock(sc, HW_LOCK_RESOURCE_GPIO);


    gpio_reg = REG_RD(sc, MISC_REG_GPIO_INT);

    switch (mode) {
    case 129:
        BLOGD(sc, DBG_PHY,
              "Clear GPIO INT %d (shift %d) -> output low\n",
              gpio_num, gpio_shift);

        gpio_reg &= ~(gpio_mask << MISC_REGISTERS_GPIO_INT_SET_POS);
        gpio_reg |= (gpio_mask << MISC_REGISTERS_GPIO_INT_CLR_POS);
        break;

    case 128:
        BLOGD(sc, DBG_PHY,
              "Set GPIO INT %d (shift %d) -> output high\n",
              gpio_num, gpio_shift);

        gpio_reg &= ~(gpio_mask << MISC_REGISTERS_GPIO_INT_CLR_POS);
        gpio_reg |= (gpio_mask << MISC_REGISTERS_GPIO_INT_SET_POS);
        break;

    default:
        break;
    }

    REG_WR(sc, MISC_REG_GPIO_INT, gpio_reg);
    bxe_release_hw_lock(sc, HW_LOCK_RESOURCE_GPIO);

    return (0);
}
