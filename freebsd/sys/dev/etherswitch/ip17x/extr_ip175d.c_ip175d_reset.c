
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip17x_softc {int sc_dev; } ;


 int DELAY (int) ;
 int IP175D_RESET_PHY ;
 int IP175D_RESET_REG ;
 int ip17x_updatephy (int ,int,int,int,int) ;
 int ip17x_writephy (int ,int,int,int) ;

__attribute__((used)) static int
ip175d_reset(struct ip17x_softc *sc)
{


 ip17x_writephy(sc->sc_dev, IP175D_RESET_PHY, IP175D_RESET_REG, 0x175d);
 DELAY(2000);


 ip17x_updatephy(sc->sc_dev, 21, 22, 0x3, 0x0);


 ip17x_writephy(sc->sc_dev, 22, 3, 0x8100);

 return (0);
}
