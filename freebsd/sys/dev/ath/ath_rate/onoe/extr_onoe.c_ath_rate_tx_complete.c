
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onoe_node {scalar_t__ on_interval; scalar_t__ on_ticks; int on_tx_retr; int on_tx_err; int on_tx_ok; } ;
struct ath_tx_status {scalar_t__ ts_status; scalar_t__ ts_longretry; scalar_t__ ts_shortretry; } ;
struct ath_softc {int dummy; } ;
struct ath_rc_series {int dummy; } ;
struct ath_node {int an_node; } ;


 struct onoe_node* ATH_NODE_ONOE (struct ath_node*) ;
 int ath_rate_ctl (struct ath_softc*,int *) ;
 scalar_t__ ticks ;

void
ath_rate_tx_complete(struct ath_softc *sc, struct ath_node *an,
 const struct ath_rc_series *rc, const struct ath_tx_status *ts,
 int frame_size, int nframes, int nbad)
{
 struct onoe_node *on = ATH_NODE_ONOE(an);

 if (ts->ts_status == 0)
  on->on_tx_ok++;
 else
  on->on_tx_err++;
 on->on_tx_retr += ts->ts_shortretry
   + ts->ts_longretry;
 if (on->on_interval != 0 && ticks - on->on_ticks > on->on_interval) {
  ath_rate_ctl(sc, &an->an_node);
  on->on_ticks = ticks;
 }
}
