
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rtwn_softc {int ntxchains; } ;
struct r92ce_iq_cal_reg_vals {int dummy; } ;


 int RTWN_IQ_CAL_NRUN ;
 int r92ce_iq_calib_compare_results (struct rtwn_softc*,int **,int **,int **,int **) ;
 int r92ce_iq_calib_run (struct rtwn_softc*,int,int **,int **,struct r92ce_iq_cal_reg_vals*) ;
 int r92ce_iq_calib_write_results (struct rtwn_softc*,int *,int *,int) ;

void
r92ce_iq_calib(struct rtwn_softc *sc)
{
 struct r92ce_iq_cal_reg_vals vals;
 uint16_t tx[RTWN_IQ_CAL_NRUN][2][2], rx[RTWN_IQ_CAL_NRUN][2][2];
 int n, valid;

 valid = 0;
 for (n = 0; n < RTWN_IQ_CAL_NRUN; n++) {
  r92ce_iq_calib_run(sc, n, tx[n], rx[n], &vals);

  if (n == 0)
   continue;


  valid = r92ce_iq_calib_compare_results(sc, tx[n - 1],
      rx[n - 1], tx[n], rx[n]);
  if (valid)
   break;
 }

 if (valid) {
  r92ce_iq_calib_write_results(sc, tx[n][0], rx[n][0], 0);
  if (sc->ntxchains > 1)
   r92ce_iq_calib_write_results(sc, tx[n][1], rx[n][1], 1);
 }
}
