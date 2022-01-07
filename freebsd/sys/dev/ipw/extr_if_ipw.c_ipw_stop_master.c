
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipw_softc {int flags; int sc_dev; } ;


 int CSR_READ_4 (struct ipw_softc*,int ) ;
 int CSR_WRITE_4 (struct ipw_softc*,int ,int) ;
 int DELAY (int) ;
 int IPW_CSR_INTR_MASK ;
 int IPW_CSR_RST ;
 int IPW_FLAG_HAS_RADIO_SWITCH ;
 int IPW_RST_MASTER_DISABLED ;
 int IPW_RST_PRINCETON_RESET ;
 int IPW_RST_STOP_MASTER ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
ipw_stop_master(struct ipw_softc *sc)
{
 uint32_t tmp;
 int ntries;


 CSR_WRITE_4(sc, IPW_CSR_INTR_MASK, 0);

 CSR_WRITE_4(sc, IPW_CSR_RST, IPW_RST_STOP_MASTER);
 for (ntries = 0; ntries < 50; ntries++) {
  if (CSR_READ_4(sc, IPW_CSR_RST) & IPW_RST_MASTER_DISABLED)
   break;
  DELAY(10);
 }
 if (ntries == 50)
  device_printf(sc->sc_dev, "timeout waiting for master\n");

 tmp = CSR_READ_4(sc, IPW_CSR_RST);
 CSR_WRITE_4(sc, IPW_CSR_RST, tmp | IPW_RST_PRINCETON_RESET);


 sc->flags &= IPW_FLAG_HAS_RADIO_SWITCH;
}
