
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct bxe_softc {int dummy; } ;


 int bxe_gpio_write (struct bxe_softc*,int ,int ,int ) ;

uint8_t
elink_cb_gpio_write(struct bxe_softc *sc,
                    uint16_t gpio_num,
                    uint8_t mode,
                    uint8_t port)
{
    return (bxe_gpio_write(sc, gpio_num, mode, port));
}
