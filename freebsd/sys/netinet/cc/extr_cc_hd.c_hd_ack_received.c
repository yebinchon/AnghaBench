
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct ertt {int rtt; int minrtt; int maxrtt; } ;
struct cc_var {int dummy; } ;
struct TYPE_2__ {int (* ack_received ) (struct cc_var*,scalar_t__) ;int (* cong_signal ) (struct cc_var*,int ) ;} ;


 int CCV (struct cc_var*,int ) ;
 scalar_t__ CC_ACK ;
 int CC_ECN ;
 int IN_RECOVERY (int ) ;
 int V_hd_qmin ;
 scalar_t__ V_hd_qthresh ;
 int ertt_id ;
 struct ertt* khelp_get_osd (int ,int ) ;
 TYPE_1__ newreno_cc_algo ;
 int osd ;
 scalar_t__ should_backoff (int,int) ;
 int stub1 (struct cc_var*,int ) ;
 int stub2 (struct cc_var*,scalar_t__) ;
 int t_flags ;

__attribute__((used)) static void
hd_ack_received(struct cc_var *ccv, uint16_t ack_type)
{
 struct ertt *e_t;
 int qdly;

 if (ack_type == CC_ACK) {
  e_t = khelp_get_osd(CCV(ccv, osd), ertt_id);

  if (e_t->rtt && e_t->minrtt && V_hd_qthresh > 0) {
   qdly = e_t->rtt - e_t->minrtt;

   if (qdly > V_hd_qmin &&
       !IN_RECOVERY(CCV(ccv, t_flags))) {

    if (should_backoff(qdly,
        e_t->maxrtt - e_t->minrtt)) {





     newreno_cc_algo.cong_signal(ccv,
         CC_ECN);
     return;
    }
   }
  }
 }
 newreno_cc_algo.ack_received(ccv, ack_type);
}
