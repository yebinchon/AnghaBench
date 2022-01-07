
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {int dummy; } ;


 int MS (int ,int ) ;
 int R92C_RF_T_METER ;
 int R92C_RF_T_METER_VAL ;
 int rtwn_rf_read (struct rtwn_softc*,int ,int ) ;

uint8_t
r92c_temp_read(struct rtwn_softc *sc)
{
 return (MS(rtwn_rf_read(sc, 0, R92C_RF_T_METER),
     R92C_RF_T_METER_VAL));
}
