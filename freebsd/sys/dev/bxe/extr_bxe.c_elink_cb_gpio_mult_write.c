
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bxe_softc {int dummy; } ;


 int bxe_gpio_mult_write (struct bxe_softc*,int ,int ) ;

uint8_t
elink_cb_gpio_mult_write(struct bxe_softc *sc,
                         uint8_t pins,
                         uint8_t mode)
{
    return (bxe_gpio_mult_write(sc, pins, mode));
}
