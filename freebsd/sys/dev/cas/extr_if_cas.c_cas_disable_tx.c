
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas_softc {int sc_dev; } ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int CAS_BARRIER (struct cas_softc*,int ,int,int) ;
 int CAS_MAC_TX_CONF ;
 int CAS_MAC_TX_CONF_EN ;
 int CAS_READ_4 (struct cas_softc*,int ) ;
 int CAS_WRITE_4 (struct cas_softc*,int ,int) ;
 scalar_t__ bootverbose ;
 scalar_t__ cas_bitwait (struct cas_softc*,int ,int,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
cas_disable_tx(struct cas_softc *sc)
{

 CAS_WRITE_4(sc, CAS_MAC_TX_CONF,
     CAS_READ_4(sc, CAS_MAC_TX_CONF) & ~CAS_MAC_TX_CONF_EN);
 CAS_BARRIER(sc, CAS_MAC_TX_CONF, 4,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
 if (cas_bitwait(sc, CAS_MAC_TX_CONF, CAS_MAC_TX_CONF_EN, 0))
  return (1);
 if (bootverbose)
  device_printf(sc->sc_dev, "cannot disable TX MAC\n");
 return (0);
}
