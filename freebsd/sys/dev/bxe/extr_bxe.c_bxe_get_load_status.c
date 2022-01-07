
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int,...) ;
 int BXE_PATH0_LOAD_CNT_MASK ;
 int BXE_PATH0_LOAD_CNT_SHIFT ;
 int BXE_PATH1_LOAD_CNT_MASK ;
 int BXE_PATH1_LOAD_CNT_SHIFT ;
 int BXE_RECOVERY_GLOB_REG ;
 int DBG_LOAD ;
 int REG_RD (struct bxe_softc*,int ) ;

__attribute__((used)) static uint8_t
bxe_get_load_status(struct bxe_softc *sc,
                    int engine)
{
    uint32_t mask = engine ? BXE_PATH1_LOAD_CNT_MASK :
                             BXE_PATH0_LOAD_CNT_MASK;
    uint32_t shift = engine ? BXE_PATH1_LOAD_CNT_SHIFT :
                              BXE_PATH0_LOAD_CNT_SHIFT;
    uint32_t val = REG_RD(sc, BXE_RECOVERY_GLOB_REG);

    BLOGD(sc, DBG_LOAD, "Old value for GLOB_REG=0x%08x\n", val);

    val = ((val & mask) >> shift);

    BLOGD(sc, DBG_LOAD, "Load mask engine %d = 0x%08x\n", engine, val);

    return (val != 0);
}
