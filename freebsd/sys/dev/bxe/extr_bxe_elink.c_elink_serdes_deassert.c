
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int DELAY (int) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEFAULT_PHY_DEV_ADDR ;
 int ELINK_SERDES_RESET_BITS ;
 scalar_t__ GRCBASE_MISC ;
 scalar_t__ MISC_REGISTERS_RESET_REG_3_CLEAR ;
 scalar_t__ MISC_REGISTERS_RESET_REG_3_SET ;
 scalar_t__ NIG_REG_SERDES0_CTRL_MD_DEVAD ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 int elink_set_serdes_access (struct bxe_softc*,int) ;

__attribute__((used)) static void elink_serdes_deassert(struct bxe_softc *sc, uint8_t port)
{
 uint32_t val;

 ELINK_DEBUG_P0(sc, "elink_serdes_deassert\n");

 val = ELINK_SERDES_RESET_BITS << (port*16);


 REG_WR(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_3_CLEAR, val);
 DELAY(500);
 REG_WR(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_3_SET, val);

 elink_set_serdes_access(sc, port);

 REG_WR(sc, NIG_REG_SERDES0_CTRL_MD_DEVAD + port*0x10,
        ELINK_DEFAULT_PHY_DEV_ADDR);
}
