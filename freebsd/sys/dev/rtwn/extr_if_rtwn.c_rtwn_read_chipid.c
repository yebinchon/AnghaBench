
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtwn_softc {int dummy; } ;


 int EOPNOTSUPP ;
 int R92C_SYS_CFG ;
 int R92C_SYS_CFG_TRP_VAUX_EN ;
 int rtwn_read_4 (struct rtwn_softc*,int ) ;
 int rtwn_read_chipid_vendor (struct rtwn_softc*,int) ;

__attribute__((used)) static int
rtwn_read_chipid(struct rtwn_softc *sc)
{
 uint32_t reg;

 reg = rtwn_read_4(sc, R92C_SYS_CFG);
 if (reg & R92C_SYS_CFG_TRP_VAUX_EN)
  return (EOPNOTSUPP);

 rtwn_read_chipid_vendor(sc, reg);

 return (0);
}
