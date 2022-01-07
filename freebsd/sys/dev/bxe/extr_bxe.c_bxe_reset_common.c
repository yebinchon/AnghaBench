
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_IS_E3 (struct bxe_softc*) ;
 scalar_t__ GRCBASE_MISC ;
 scalar_t__ MISC_REGISTERS_RESET_REG_1_CLEAR ;
 scalar_t__ MISC_REGISTERS_RESET_REG_2_CLEAR ;
 int MISC_REGISTERS_RESET_REG_2_MSTAT0 ;
 int MISC_REGISTERS_RESET_REG_2_MSTAT1 ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;

__attribute__((used)) static void
bxe_reset_common(struct bxe_softc *sc)
{
    uint32_t val = 0x1400;


    REG_WR(sc, (GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_CLEAR), 0xd3ffff7f);

    if (CHIP_IS_E3(sc)) {
        val |= MISC_REGISTERS_RESET_REG_2_MSTAT0;
        val |= MISC_REGISTERS_RESET_REG_2_MSTAT1;
    }

    REG_WR(sc, (GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR), val);
}
