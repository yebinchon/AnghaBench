
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsec_softc {int dummy; } ;
typedef int device_t ;


 int TSEC_MIIMCOM_READCYCLE ;
 int TSEC_MIIMIND_BUSY ;
 int TSEC_MIIMIND_NOTVALID ;
 int TSEC_PHY_LOCK () ;
 int TSEC_PHY_READ (struct tsec_softc*,int ) ;
 int TSEC_PHY_UNLOCK () ;
 int TSEC_PHY_WRITE (struct tsec_softc*,int ,int) ;
 int TSEC_REG_MIIMADD ;
 int TSEC_REG_MIIMCOM ;
 int TSEC_REG_MIIMSTAT ;
 struct tsec_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int tsec_mii_wait (struct tsec_softc*,int) ;

int
tsec_miibus_readreg(device_t dev, int phy, int reg)
{
 struct tsec_softc *sc;
 int timeout;
 int rv;

 sc = device_get_softc(dev);

 TSEC_PHY_LOCK();
 TSEC_PHY_WRITE(sc, TSEC_REG_MIIMADD, (phy << 8) | reg);
 TSEC_PHY_WRITE(sc, TSEC_REG_MIIMCOM, 0);
 TSEC_PHY_WRITE(sc, TSEC_REG_MIIMCOM, TSEC_MIIMCOM_READCYCLE);

 timeout = tsec_mii_wait(sc, TSEC_MIIMIND_NOTVALID | TSEC_MIIMIND_BUSY);
 rv = TSEC_PHY_READ(sc, TSEC_REG_MIIMSTAT);
 TSEC_PHY_UNLOCK();

 if (timeout)
  device_printf(dev, "Timeout while reading from PHY!\n");

 return (rv);
}
