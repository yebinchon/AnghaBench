
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_IS_E1H (struct bxe_softc*) ;
 int E1H_FUNC_MAX ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int ) ;
 int bxe_get_pretend_reg (struct bxe_softc*) ;

__attribute__((used)) static int
bxe_pretend_func(struct bxe_softc *sc,
                 uint16_t pretend_func_val)
{
    uint32_t pretend_reg;

    if (CHIP_IS_E1H(sc) && (pretend_func_val > E1H_FUNC_MAX)) {
        return (-1);
    }


    pretend_reg = bxe_get_pretend_reg(sc);
    REG_WR(sc, pretend_reg, pretend_func_val);
    REG_RD(sc, pretend_reg);
    return (0);
}
