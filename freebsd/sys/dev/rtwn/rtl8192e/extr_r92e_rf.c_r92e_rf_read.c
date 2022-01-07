
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rtwn_softc {int dummy; } ;


 int MS (int,int ) ;
 int R92C_HSPI_READBACK (int) ;
 int R92C_HSSI_PARAM1 (int) ;
 int R92C_HSSI_PARAM1_PI ;
 int R92C_HSSI_PARAM2 (int) ;
 int R92C_HSSI_PARAM2_READ_ADDR ;
 int R92C_HSSI_PARAM2_READ_EDGE ;
 int R92C_LSSI_READBACK (int) ;
 int R92C_LSSI_READBACK_DATA ;
 int RW (int,int ,int ) ;
 int rtwn_bb_read (struct rtwn_softc*,int ) ;
 int rtwn_bb_setbits (struct rtwn_softc*,int ,int,int) ;
 int rtwn_bb_write (struct rtwn_softc*,int ,int) ;
 int rtwn_delay (struct rtwn_softc*,int) ;

uint32_t
r92e_rf_read(struct rtwn_softc *sc, int chain, uint8_t addr)
{
 uint32_t val;

 val = rtwn_bb_read(sc, R92C_HSSI_PARAM2(chain));
 rtwn_bb_write(sc, R92C_HSSI_PARAM2(chain),
     RW(val, R92C_HSSI_PARAM2_READ_ADDR, addr) &
     ~R92C_HSSI_PARAM2_READ_EDGE);

 rtwn_bb_setbits(sc, R92C_HSSI_PARAM2(0), R92C_HSSI_PARAM2_READ_EDGE, 0);
 rtwn_bb_setbits(sc, R92C_HSSI_PARAM2(0), 0, R92C_HSSI_PARAM2_READ_EDGE);
 rtwn_delay(sc, 20);

 if (rtwn_bb_read(sc, R92C_HSSI_PARAM1(chain)) & R92C_HSSI_PARAM1_PI)
  val = rtwn_bb_read(sc, R92C_HSPI_READBACK(chain));
 else
  val = rtwn_bb_read(sc, R92C_LSSI_READBACK(chain));
 return (MS(val, R92C_LSSI_READBACK_DATA));
}
