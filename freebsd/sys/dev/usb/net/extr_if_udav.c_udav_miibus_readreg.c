
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct udav_softc {int sc_mtx; } ;
typedef int device_t ;


 int DPRINTFN (int,char*,int,int,int) ;
 int UDAV_CLRBIT (struct udav_softc*,int ,int) ;
 int UDAV_EPAR ;
 int UDAV_EPAR_EROA_MASK ;
 int UDAV_EPAR_PHY_ADR0 ;
 int UDAV_EPCR ;
 int UDAV_EPCR_EPOS ;
 int UDAV_EPCR_ERPRR ;
 int UDAV_EPDRL ;
 int UDAV_LOCK (struct udav_softc*) ;
 int UDAV_UNLOCK (struct udav_softc*) ;
 struct udav_softc* device_get_softc (int ) ;
 int mtx_owned (int *) ;
 int udav_csr_read (struct udav_softc*,int ,int*,int) ;
 int udav_csr_write1 (struct udav_softc*,int ,int) ;

__attribute__((used)) static int
udav_miibus_readreg(device_t dev, int phy, int reg)
{
 struct udav_softc *sc = device_get_softc(dev);
 uint16_t data16;
 uint8_t val[2];
 int locked;


 if (phy != 0)
  return (0);

 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  UDAV_LOCK(sc);


 udav_csr_write1(sc, UDAV_EPAR,
     UDAV_EPAR_PHY_ADR0 | (reg & UDAV_EPAR_EROA_MASK));


 udav_csr_write1(sc, UDAV_EPCR, UDAV_EPCR_EPOS | UDAV_EPCR_ERPRR);




 UDAV_CLRBIT(sc, UDAV_EPCR, UDAV_EPCR_ERPRR);


 udav_csr_read(sc, UDAV_EPDRL, val, 2);

 data16 = (val[0] | (val[1] << 8));

 DPRINTFN(11, "phy=%d reg=0x%04x => 0x%04x\n",
     phy, reg, data16);

 if (!locked)
  UDAV_UNLOCK(sc);
 return (data16);
}
