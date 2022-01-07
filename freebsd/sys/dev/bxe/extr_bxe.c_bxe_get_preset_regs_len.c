
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_IS_E1 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E1H (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E2 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E3A0 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E3B0 (struct bxe_softc*) ;
 int** dump_num_registers ;

__attribute__((used)) static int
bxe_get_preset_regs_len(struct bxe_softc *sc, uint32_t preset)
{
    if (CHIP_IS_E1(sc))
        return dump_num_registers[0][preset-1];
    else if (CHIP_IS_E1H(sc))
        return dump_num_registers[1][preset-1];
    else if (CHIP_IS_E2(sc))
        return dump_num_registers[2][preset-1];
    else if (CHIP_IS_E3A0(sc))
        return dump_num_registers[3][preset-1];
    else if (CHIP_IS_E3B0(sc))
        return dump_num_registers[4][preset-1];
    else
        return 0;
}
