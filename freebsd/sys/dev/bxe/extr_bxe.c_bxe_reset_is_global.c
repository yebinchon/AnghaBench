
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int) ;
 int BXE_GLOBAL_RESET_BIT ;
 int BXE_RECOVERY_GLOB_REG ;
 int DBG_LOAD ;
 int FALSE ;
 int REG_RD (struct bxe_softc*,int ) ;
 int TRUE ;

__attribute__((used)) static uint8_t
bxe_reset_is_global(struct bxe_softc *sc)
{
    uint32_t val = REG_RD(sc, BXE_RECOVERY_GLOB_REG);
    BLOGD(sc, DBG_LOAD, "GLOB_REG=0x%08x\n", val);
    return (val & BXE_GLOBAL_RESET_BIT) ? TRUE : FALSE;
}
