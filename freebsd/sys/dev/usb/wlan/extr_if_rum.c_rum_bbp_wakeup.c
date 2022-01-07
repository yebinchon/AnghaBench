
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rum_softc {int sc_dev; } ;


 int ETIMEDOUT ;
 int RT2573_MAC_CSR12 ;
 int device_printf (int ,char*) ;
 int hz ;
 scalar_t__ rum_pause (struct rum_softc*,int) ;
 int rum_read (struct rum_softc*,int ) ;
 int rum_write (struct rum_softc*,int ,int) ;

__attribute__((used)) static int
rum_bbp_wakeup(struct rum_softc *sc)
{
 unsigned int ntries;

 for (ntries = 0; ntries < 100; ntries++) {
  if (rum_read(sc, RT2573_MAC_CSR12) & 8)
   break;
  rum_write(sc, RT2573_MAC_CSR12, 4);
  if (rum_pause(sc, hz / 100))
   break;
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev,
      "timeout waiting for BBP/RF to wakeup\n");
  return (ETIMEDOUT);
 }

 return (0);
}
