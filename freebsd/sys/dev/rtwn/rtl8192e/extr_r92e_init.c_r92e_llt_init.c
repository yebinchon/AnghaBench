
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int ETIMEDOUT ;
 int R92C_AUTO_LLT ;
 int R92C_AUTO_LLT_INIT ;
 int rtwn_delay (struct rtwn_softc*,int) ;
 int rtwn_read_4 (struct rtwn_softc*,int ) ;
 int rtwn_setbits_4 (struct rtwn_softc*,int ,int ,int) ;

int
r92e_llt_init(struct rtwn_softc *sc)
{
 int ntries, error;

 error = rtwn_setbits_4(sc, R92C_AUTO_LLT, 0, R92C_AUTO_LLT_INIT);
 if (error != 0)
  return (error);
 for (ntries = 0; ntries < 1000; ntries++) {
  if (!(rtwn_read_4(sc, R92C_AUTO_LLT) & R92C_AUTO_LLT_INIT))
   return (0);
  rtwn_delay(sc, 1);
 }
 return (ETIMEDOUT);
}
