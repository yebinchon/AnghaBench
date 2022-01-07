
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct ertt {int flags; int rtt; int minrtt; scalar_t__ maxrtt; } ;
struct chd {int maxrtt_in_rtt; int prev_backoff_qdly; scalar_t__ shadow_w; scalar_t__ loss_compete; } ;
struct cc_var {struct chd* cc_data; } ;


 int CCV (struct cc_var*,int ) ;
 scalar_t__ CC_ACK ;
 int CC_CHD_DELAY ;
 int ERTT_NEW_MEASUREMENT ;
 int IN_RECOVERY (int ) ;
 int V_chd_qmin ;
 scalar_t__ V_chd_use_max ;
 int chd_cong_signal (struct cc_var*,int ) ;
 int chd_window_increase (struct cc_var*,int) ;
 int ertt_id ;
 int imax (int,int) ;
 struct ertt* khelp_get_osd (int ,int ) ;
 scalar_t__ max (int ,scalar_t__) ;
 int osd ;
 int should_backoff (int,scalar_t__,struct chd*) ;
 int snd_cwnd ;
 int t_flags ;

__attribute__((used)) static void
chd_ack_received(struct cc_var *ccv, uint16_t ack_type)
{
 struct chd *chd_data;
 struct ertt *e_t;
 int backoff, new_measurement, qdly, rtt;

 e_t = khelp_get_osd(CCV(ccv, osd), ertt_id);
 chd_data = ccv->cc_data;
 new_measurement = e_t->flags & ERTT_NEW_MEASUREMENT;
 backoff = qdly = 0;

 chd_data->maxrtt_in_rtt = imax(e_t->rtt, chd_data->maxrtt_in_rtt);

 if (new_measurement) {




  rtt = V_chd_use_max ? chd_data->maxrtt_in_rtt : e_t->rtt;
  chd_data->maxrtt_in_rtt = 0;

  if (rtt && e_t->minrtt && !IN_RECOVERY(CCV(ccv, t_flags))) {
   qdly = rtt - e_t->minrtt;
   if (qdly > V_chd_qmin) {




    backoff = should_backoff(qdly,
        e_t->maxrtt - e_t->minrtt, chd_data);
   } else
    chd_data->loss_compete = 0;
  }

  e_t->flags &= ~ERTT_NEW_MEASUREMENT;
 }

 if (backoff) {



  if (chd_data->loss_compete ||
      qdly > chd_data->prev_backoff_qdly) {





   chd_data->shadow_w = max(CCV(ccv, snd_cwnd),
       chd_data->shadow_w);
  } else {




   chd_data->shadow_w = 0;
  }

  chd_data->prev_backoff_qdly = qdly;




  chd_cong_signal(ccv, CC_CHD_DELAY);

 } else if (ack_type == CC_ACK)
  chd_window_increase(ccv, new_measurement);
}
