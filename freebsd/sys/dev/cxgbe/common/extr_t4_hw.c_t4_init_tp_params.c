
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tp_params {int* tx_modq; void* err_vec_mask; int dack_re; int tre; } ;
struct TYPE_2__ {struct tp_params tp; } ;
struct adapter {TYPE_1__ params; } ;


 int A_TP_OUT_CONFIG ;
 int A_TP_TIMER_RESOLUTION ;
 scalar_t__ CHELSIO_T5 ;
 int F_CRXPKTENC ;
 int G_DELAYEDACKRESOLUTION (int) ;
 int G_TIMERRESOLUTION (int) ;
 int MAX_NCHAN ;
 int M_T6_COMPR_RXERR_VEC ;
 int V_T6_COMPR_RXERR_VEC (int ) ;
 scalar_t__ chip_id (struct adapter*) ;
 void* htobe16 (int) ;
 int read_filter_mode_and_ingress_config (struct adapter*,int) ;
 int t4_read_reg (struct adapter*,int ) ;

int t4_init_tp_params(struct adapter *adap, bool sleep_ok)
{
 int chan;
 u32 v;
 struct tp_params *tpp = &adap->params.tp;

 v = t4_read_reg(adap, A_TP_TIMER_RESOLUTION);
 tpp->tre = G_TIMERRESOLUTION(v);
 tpp->dack_re = G_DELAYEDACKRESOLUTION(v);


 for (chan = 0; chan < MAX_NCHAN; chan++)
  tpp->tx_modq[chan] = chan;

 read_filter_mode_and_ingress_config(adap, sleep_ok);






 tpp->err_vec_mask = htobe16(0xffff);
 if (chip_id(adap) > CHELSIO_T5) {
  v = t4_read_reg(adap, A_TP_OUT_CONFIG);
  if (v & F_CRXPKTENC) {
   tpp->err_vec_mask =
       htobe16(V_T6_COMPR_RXERR_VEC(M_T6_COMPR_RXERR_VEC));
  }
 }

 return 0;
}
