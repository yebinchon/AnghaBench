
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_addr {int chips; } ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_IS_E1 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E1H (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E2 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E3A0 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E3B0 (struct bxe_softc*) ;
 int IS_E1H_REG (int ) ;
 int IS_E1_REG (int ) ;
 int IS_E2_REG (int ) ;
 int IS_E3A0_REG (int ) ;
 int IS_E3B0_REG (int ) ;

__attribute__((used)) static bool
bxe_is_reg_in_chip(struct bxe_softc *sc, const struct reg_addr *reg_info)
{
    if (CHIP_IS_E1(sc))
        return IS_E1_REG(reg_info->chips);
    else if (CHIP_IS_E1H(sc))
        return IS_E1H_REG(reg_info->chips);
    else if (CHIP_IS_E2(sc))
        return IS_E2_REG(reg_info->chips);
    else if (CHIP_IS_E3A0(sc))
        return IS_E3A0_REG(reg_info->chips);
    else if (CHIP_IS_E3B0(sc))
        return IS_E3B0_REG(reg_info->chips);
    else
        return 0;
}
