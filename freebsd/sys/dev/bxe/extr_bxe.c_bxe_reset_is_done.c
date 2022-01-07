
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BXE_PATH0_RST_IN_PROG_BIT ;
 int BXE_PATH1_RST_IN_PROG_BIT ;
 int BXE_RECOVERY_GLOB_REG ;
 int FALSE ;
 int REG_RD (struct bxe_softc*,int ) ;
 int TRUE ;

__attribute__((used)) static uint8_t
bxe_reset_is_done(struct bxe_softc *sc,
                  int engine)
{
    uint32_t val = REG_RD(sc, BXE_RECOVERY_GLOB_REG);
    uint32_t bit = engine ? BXE_PATH1_RST_IN_PROG_BIT :
                            BXE_PATH0_RST_IN_PROG_BIT;


    return (val & bit) ? FALSE : TRUE;
}
