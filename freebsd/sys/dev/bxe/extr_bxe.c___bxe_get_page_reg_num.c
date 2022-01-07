
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_IS_E2 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E3 (struct bxe_softc*) ;
 int PAGE_MODE_VALUES_E2 ;
 int PAGE_MODE_VALUES_E3 ;

__attribute__((used)) static uint32_t
__bxe_get_page_reg_num(struct bxe_softc *sc)
{
    if (CHIP_IS_E2(sc))
        return PAGE_MODE_VALUES_E2;
    else if (CHIP_IS_E3(sc))
        return PAGE_MODE_VALUES_E3;
    else
        return 0;
}
