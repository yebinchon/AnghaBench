
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jme_softc {int* jme_eaddr; int jme_dev; } ;


 int CSR_READ_4 (struct jme_softc*,int ) ;
 int JME_PAR0 ;
 int JME_PAR1 ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
jme_reg_macaddr(struct jme_softc *sc)
{
 uint32_t par0, par1;


 par0 = CSR_READ_4(sc, JME_PAR0);
 par1 = CSR_READ_4(sc, JME_PAR1);
 par1 &= 0xFFFF;
 if ((par0 == 0 && par1 == 0) ||
     (par0 == 0xFFFFFFFF && par1 == 0xFFFF)) {
  device_printf(sc->jme_dev,
      "Failed to retrieve Ethernet address.\n");
 } else {







  sc->jme_eaddr[0] = (par0 >> 0) & 0xFF;
  sc->jme_eaddr[1] = (par0 >> 8) & 0xFF;
  sc->jme_eaddr[2] = (par0 >> 16) & 0xFF;
  sc->jme_eaddr[3] = (par0 >> 24) & 0xFF;
  sc->jme_eaddr[4] = (par1 >> 0) & 0xFF;
  sc->jme_eaddr[5] = (par1 >> 8) & 0xFF;
 }
}
