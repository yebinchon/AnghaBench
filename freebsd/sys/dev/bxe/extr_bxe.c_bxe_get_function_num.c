
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int pfunc_rel; int path_id; int pfunc_abs; } ;


 int BAR_ME_REGISTER ;
 int BLOGD (struct bxe_softc*,int ,char*,int,int,int) ;
 scalar_t__ CHIP_4_PORT_MODE ;
 scalar_t__ CHIP_PORT_MODE (struct bxe_softc*) ;
 int DBG_LOAD ;
 int ME_REG_ABS_PF_NUM ;
 int ME_REG_ABS_PF_NUM_SHIFT ;
 int ME_REG_PF_NUM ;
 int ME_REG_PF_NUM_SHIFT ;
 int REG_RD (struct bxe_softc*,int ) ;

__attribute__((used)) static void
bxe_get_function_num(struct bxe_softc *sc)
{
    uint32_t val = 0;
    val = REG_RD(sc, BAR_ME_REGISTER);

    sc->pfunc_rel =
        (uint8_t)((val & ME_REG_PF_NUM) >> ME_REG_PF_NUM_SHIFT);
    sc->path_id =
        (uint8_t)((val & ME_REG_ABS_PF_NUM) >> ME_REG_ABS_PF_NUM_SHIFT) & 1;

    if (CHIP_PORT_MODE(sc) == CHIP_4_PORT_MODE) {
        sc->pfunc_abs = ((sc->pfunc_rel << 1) | sc->path_id);
    } else {
        sc->pfunc_abs = (sc->pfunc_rel | sc->path_id);
    }

    BLOGD(sc, DBG_LOAD,
          "Relative function %d, Absolute function %d, Path %d\n",
          sc->pfunc_rel, sc->pfunc_abs, sc->path_id);
}
