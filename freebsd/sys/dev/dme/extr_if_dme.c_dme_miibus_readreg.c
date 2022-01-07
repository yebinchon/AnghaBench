
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dme_softc {int dummy; } ;
typedef int device_t ;


 int DELAY (int) ;
 int DME_EPAR ;
 int DME_EPCR ;
 int DME_EPDRH ;
 int DME_EPDRL ;
 int DME_TIMEOUT ;
 int EPCR_EPOS ;
 int EPCR_ERPRR ;
 int EPCR_ERRE ;
 struct dme_softc* device_get_softc (int ) ;
 int dme_read_reg (struct dme_softc*,int ) ;
 int dme_write_reg (struct dme_softc*,int ,int) ;

__attribute__((used)) static int
dme_miibus_readreg(device_t dev, int phy, int reg)
{
 struct dme_softc *sc;
 int i, rval;


 if (phy >= 4)
  return (0);

 sc = device_get_softc(dev);


 dme_write_reg(sc, DME_EPAR, (phy << 6) | reg);
 dme_write_reg(sc, DME_EPCR, EPCR_EPOS | EPCR_ERPRR);


 for (i = 0; i < DME_TIMEOUT; i++) {
  if ((dme_read_reg(sc, DME_EPCR) & EPCR_ERRE) == 0)
   break;
  DELAY(1);
 }


 dme_write_reg(sc, DME_EPCR, 0);

 if (i == DME_TIMEOUT)
  return (0);

 rval = (dme_read_reg(sc, DME_EPDRH) << 8) | dme_read_reg(sc, DME_EPDRL);
 return (rval);
}
