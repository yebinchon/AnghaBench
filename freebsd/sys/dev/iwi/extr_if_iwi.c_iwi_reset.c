
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwi_softc {int sc_dev; } ;


 int CSR_READ_4 (struct iwi_softc*,int ) ;
 int CSR_WRITE_4 (struct iwi_softc*,int ,int) ;
 int DELAY (int) ;
 int EIO ;
 int IWI_CSR_AUTOINC_ADDR ;
 int IWI_CSR_AUTOINC_DATA ;
 int IWI_CSR_CTL ;
 int IWI_CSR_READ_INT ;
 int IWI_CSR_RST ;
 int IWI_CTL_CLOCK_READY ;
 int IWI_CTL_INIT ;
 int IWI_READ_INT_INIT_HOST ;
 int IWI_RST_SOFT_RESET ;
 int device_printf (int ,char*) ;
 int iwi_stop_master (struct iwi_softc*) ;

__attribute__((used)) static int
iwi_reset(struct iwi_softc *sc)
{
 uint32_t tmp;
 int i, ntries;

 iwi_stop_master(sc);

 tmp = CSR_READ_4(sc, IWI_CSR_CTL);
 CSR_WRITE_4(sc, IWI_CSR_CTL, tmp | IWI_CTL_INIT);

 CSR_WRITE_4(sc, IWI_CSR_READ_INT, IWI_READ_INT_INIT_HOST);


 for (ntries = 0; ntries < 1000; ntries++) {
  if (CSR_READ_4(sc, IWI_CSR_CTL) & IWI_CTL_CLOCK_READY)
   break;
  DELAY(200);
 }
 if (ntries == 1000) {
  device_printf(sc->sc_dev,
      "timeout waiting for clock stabilization\n");
  return EIO;
 }

 tmp = CSR_READ_4(sc, IWI_CSR_RST);
 CSR_WRITE_4(sc, IWI_CSR_RST, tmp | IWI_RST_SOFT_RESET);

 DELAY(10);

 tmp = CSR_READ_4(sc, IWI_CSR_CTL);
 CSR_WRITE_4(sc, IWI_CSR_CTL, tmp | IWI_CTL_INIT);


 CSR_WRITE_4(sc, IWI_CSR_AUTOINC_ADDR, 0);
 for (i = 0; i < 0xc000; i++)
  CSR_WRITE_4(sc, IWI_CSR_AUTOINC_DATA, 0);

 return 0;
}
