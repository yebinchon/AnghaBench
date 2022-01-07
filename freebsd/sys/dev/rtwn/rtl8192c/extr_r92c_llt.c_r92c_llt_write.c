
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtwn_softc {int dummy; } ;


 int ETIMEDOUT ;
 scalar_t__ MS (int ,int ) ;
 int R92C_LLT_INIT ;
 int R92C_LLT_INIT_ADDR ;
 int R92C_LLT_INIT_DATA ;
 int R92C_LLT_INIT_OP ;
 scalar_t__ R92C_LLT_INIT_OP_NO_ACTIVE ;
 int R92C_LLT_INIT_OP_WRITE ;
 int SM (int ,int ) ;
 int rtwn_delay (struct rtwn_softc*,int) ;
 int rtwn_read_4 (struct rtwn_softc*,int ) ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int) ;

int
r92c_llt_write(struct rtwn_softc *sc, uint32_t addr, uint32_t data)
{
 int ntries, error;

 error = rtwn_write_4(sc, R92C_LLT_INIT,
     SM(R92C_LLT_INIT_OP, R92C_LLT_INIT_OP_WRITE) |
     SM(R92C_LLT_INIT_ADDR, addr) |
     SM(R92C_LLT_INIT_DATA, data));
 if (error != 0)
  return (error);

 for (ntries = 0; ntries < 20; ntries++) {
  if (MS(rtwn_read_4(sc, R92C_LLT_INIT), R92C_LLT_INIT_OP) ==
      R92C_LLT_INIT_OP_NO_ACTIVE)
   return (0);
  rtwn_delay(sc, 10);
 }
 return (ETIMEDOUT);
}
