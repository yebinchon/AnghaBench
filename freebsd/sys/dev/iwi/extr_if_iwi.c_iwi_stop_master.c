
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwi_softc {int flags; int sc_dev; } ;


 int CSR_READ_4 (struct iwi_softc*,int ) ;
 int CSR_WRITE_4 (struct iwi_softc*,int ,int) ;
 int DELAY (int) ;
 int IWI_CSR_INTR_MASK ;
 int IWI_CSR_RST ;
 int IWI_FLAG_FW_INITED ;
 int IWI_RST_MASTER_DISABLED ;
 int IWI_RST_PRINCETON_RESET ;
 int IWI_RST_STOP_MASTER ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
iwi_stop_master(struct iwi_softc *sc)
{
 uint32_t tmp;
 int ntries;


 CSR_WRITE_4(sc, IWI_CSR_INTR_MASK, 0);

 CSR_WRITE_4(sc, IWI_CSR_RST, IWI_RST_STOP_MASTER);
 for (ntries = 0; ntries < 5; ntries++) {
  if (CSR_READ_4(sc, IWI_CSR_RST) & IWI_RST_MASTER_DISABLED)
   break;
  DELAY(10);
 }
 if (ntries == 5)
  device_printf(sc->sc_dev, "timeout waiting for master\n");

 tmp = CSR_READ_4(sc, IWI_CSR_RST);
 CSR_WRITE_4(sc, IWI_CSR_RST, tmp | IWI_RST_PRINCETON_RESET);

 sc->flags &= ~IWI_FLAG_FW_INITED;
}
