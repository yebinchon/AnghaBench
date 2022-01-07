
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_IS_E2 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E3 (struct bxe_softc*) ;
 int const* page_write_regs_e2 ;
 int const* page_write_regs_e3 ;

__attribute__((used)) static const uint32_t *
__bxe_get_page_write_ar(struct bxe_softc *sc)
{
    if (CHIP_IS_E2(sc))
        return page_write_regs_e2;
    else if (CHIP_IS_E3(sc))
        return page_write_regs_e3;
    else
        return ((void*)0);
}
