
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_RF_T_METER ;
 int R92C_RF_T_METER_START ;
 int rtwn_rf_write (struct rtwn_softc*,int ,int ,int ) ;

void
r92c_temp_measure(struct rtwn_softc *sc)
{
 rtwn_rf_write(sc, 0, R92C_RF_T_METER, R92C_RF_T_METER_START);
}
