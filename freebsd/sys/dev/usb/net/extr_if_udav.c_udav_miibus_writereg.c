
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct udav_softc {int sc_mtx; } ;
typedef int device_t ;


 int UDAV_CLRBIT (struct udav_softc*,int ,int) ;
 int UDAV_EPAR ;
 int UDAV_EPAR_EROA_MASK ;
 int UDAV_EPAR_PHY_ADR0 ;
 int UDAV_EPCR ;
 int UDAV_EPCR_EPOS ;
 int UDAV_EPCR_ERPRW ;
 int UDAV_EPDRL ;
 int UDAV_LOCK (struct udav_softc*) ;
 int UDAV_UNLOCK (struct udav_softc*) ;
 struct udav_softc* device_get_softc (int ) ;
 int mtx_owned (int *) ;
 int udav_csr_write (struct udav_softc*,int ,int*,int) ;
 int udav_csr_write1 (struct udav_softc*,int ,int) ;

__attribute__((used)) static int
udav_miibus_writereg(device_t dev, int phy, int reg, int data)
{
 struct udav_softc *sc = device_get_softc(dev);
 uint8_t val[2];
 int locked;


 if (phy != 0)
  return (0);

 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  UDAV_LOCK(sc);


 udav_csr_write1(sc, UDAV_EPAR,
     UDAV_EPAR_PHY_ADR0 | (reg & UDAV_EPAR_EROA_MASK));


 val[0] = (data & 0xff);
 val[1] = (data >> 8) & 0xff;
 udav_csr_write(sc, UDAV_EPDRL, val, 2);


 udav_csr_write1(sc, UDAV_EPCR, UDAV_EPCR_EPOS | UDAV_EPCR_ERPRW);




 UDAV_CLRBIT(sc, UDAV_EPCR, UDAV_EPCR_ERPRW);

 if (!locked)
  UDAV_UNLOCK(sc);
 return (0);
}
