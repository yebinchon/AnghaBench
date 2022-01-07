
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ip17x_softc {int sc_dev; } ;


 int DELAY (int) ;
 int IP175C_MODE_PHY ;
 int IP175C_MODE_REG ;
 int IP175C_RESET_PHY ;
 int IP175C_RESET_REG ;
 int ip17x_readphy (int ,int ,int ) ;
 scalar_t__ ip17x_writephy (int ,int ,int ,int) ;

__attribute__((used)) static int
ip175c_reset(struct ip17x_softc *sc)
{
 uint32_t data;


 if (ip17x_writephy(sc->sc_dev, IP175C_RESET_PHY, IP175C_RESET_REG,
     0x175c))
  return (-1);
 DELAY(2000);


 data = ip17x_readphy(sc->sc_dev, IP175C_MODE_PHY, IP175C_MODE_REG);
 if (data == 0x175a) {
  if (ip17x_writephy(sc->sc_dev, IP175C_MODE_PHY, IP175C_MODE_REG,
      0x175c))
  return (-1);
 }

 return (0);
}
