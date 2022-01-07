
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xae_softc {int dummy; } ;
typedef int device_t ;


 int MDIO_CTRL_INITIATE ;
 int MDIO_CTRL_TX_OP_READ ;
 int MDIO_TX_PHYAD_S ;
 int MDIO_TX_REGAD_S ;
 int READ4 (struct xae_softc*,int ) ;
 int WRITE4 (struct xae_softc*,int ,int) ;
 int XAE_MDIO_CTRL ;
 int XAE_MDIO_READ ;
 struct xae_softc* device_get_softc (int ) ;
 scalar_t__ mdio_wait (struct xae_softc*) ;

__attribute__((used)) static int
xae_miibus_read_reg(device_t dev, int phy, int reg)
{
 struct xae_softc *sc;
 uint32_t mii;
 int rv;

 sc = device_get_softc(dev);

 if (mdio_wait(sc))
  return (0);

 mii = MDIO_CTRL_TX_OP_READ | MDIO_CTRL_INITIATE;
 mii |= (reg << MDIO_TX_REGAD_S);
 mii |= (phy << MDIO_TX_PHYAD_S);

 WRITE4(sc, XAE_MDIO_CTRL, mii);

 if (mdio_wait(sc))
  return (0);

 rv = READ4(sc, XAE_MDIO_READ);

 return (rv);
}
