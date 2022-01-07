
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_softc {scalar_t__ sis_type; int sis_dev; } ;


 int CSR_READ_4 (struct sis_softc*,int ) ;
 int CSR_WRITE_4 (struct sis_softc*,int ,int ) ;
 int DELAY (int) ;
 int NS_CLKRUN ;
 int NS_CLKRUN_PMESTS ;
 int SIS_CSR ;
 int SIS_CSR_RESET ;
 int SIS_PWRMAN_CTL ;
 int SIS_SETBIT (struct sis_softc*,int ,int) ;
 int SIS_TIMEOUT ;
 scalar_t__ SIS_TYPE_83815 ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
sis_reset(struct sis_softc *sc)
{
 int i;

 SIS_SETBIT(sc, SIS_CSR, SIS_CSR_RESET);

 for (i = 0; i < SIS_TIMEOUT; i++) {
  if (!(CSR_READ_4(sc, SIS_CSR) & SIS_CSR_RESET))
   break;
 }

 if (i == SIS_TIMEOUT)
  device_printf(sc->sis_dev, "reset never completed\n");


 DELAY(1000);





 if (sc->sis_type == SIS_TYPE_83815) {
  CSR_WRITE_4(sc, NS_CLKRUN, NS_CLKRUN_PMESTS);
  CSR_WRITE_4(sc, NS_CLKRUN, 0);
 } else {

  CSR_WRITE_4(sc, SIS_PWRMAN_CTL, 0);
 }
}
