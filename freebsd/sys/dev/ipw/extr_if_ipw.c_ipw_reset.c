
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipw_softc {int dummy; } ;


 int CSR_READ_4 (struct ipw_softc*,int ) ;
 int CSR_WRITE_4 (struct ipw_softc*,int ,int) ;
 int DELAY (int) ;
 int EIO ;
 int IPW_CSR_CTL ;
 int IPW_CSR_RST ;
 int IPW_CTL_CLOCK_READY ;
 int IPW_CTL_INIT ;
 int IPW_RST_SW_RESET ;
 int ipw_stop_master (struct ipw_softc*) ;

__attribute__((used)) static int
ipw_reset(struct ipw_softc *sc)
{
 uint32_t tmp;
 int ntries;

 ipw_stop_master(sc);


 tmp = CSR_READ_4(sc, IPW_CSR_CTL);
 CSR_WRITE_4(sc, IPW_CSR_CTL, tmp | IPW_CTL_INIT);


 for (ntries = 0; ntries < 1000; ntries++) {
  if (CSR_READ_4(sc, IPW_CSR_CTL) & IPW_CTL_CLOCK_READY)
   break;
  DELAY(200);
 }
 if (ntries == 1000)
  return EIO;

 tmp = CSR_READ_4(sc, IPW_CSR_RST);
 CSR_WRITE_4(sc, IPW_CSR_RST, tmp | IPW_RST_SW_RESET);

 DELAY(10);

 tmp = CSR_READ_4(sc, IPW_CSR_CTL);
 CSR_WRITE_4(sc, IPW_CSR_CTL, tmp | IPW_CTL_INIT);

 return 0;
}
