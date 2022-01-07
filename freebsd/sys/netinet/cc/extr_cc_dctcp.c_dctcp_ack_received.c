
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct dctcp {int bytes_total; int ece_prev; int bytes_ecn; int save_sndnxt; scalar_t__ ece_curr; } ;
struct cc_var {int bytes_this_ack; int curack; struct dctcp* cc_data; } ;
struct TYPE_2__ {int (* ack_received ) (struct cc_var*,scalar_t__) ;} ;


 int CCV (struct cc_var*,int ) ;
 scalar_t__ CC_ACK ;
 scalar_t__ CC_DUPACK ;
 int ENTER_CONGRECOVERY (int) ;
 int EXIT_CONGRECOVERY (int) ;
 scalar_t__ IN_CONGRECOVERY (int) ;
 scalar_t__ IN_FASTRECOVERY (int) ;
 scalar_t__ SEQ_GEQ (int ,int) ;
 scalar_t__ SEQ_GT (int ,int ) ;
 int TF_ECN_PERMIT ;
 int dctcp_update_alpha (struct cc_var*) ;
 int min (int,int) ;
 TYPE_1__ newreno_cc_algo ;
 int snd_recover ;
 int stub1 (struct cc_var*,scalar_t__) ;
 int stub2 (struct cc_var*,scalar_t__) ;
 int stub3 (struct cc_var*,scalar_t__) ;
 int t_flags ;
 int t_maxseg ;

__attribute__((used)) static void
dctcp_ack_received(struct cc_var *ccv, uint16_t type)
{
 struct dctcp *dctcp_data;
 int bytes_acked = 0;

 dctcp_data = ccv->cc_data;

 if (CCV(ccv, t_flags) & TF_ECN_PERMIT) {





  if (IN_CONGRECOVERY(CCV(ccv, t_flags))) {
   EXIT_CONGRECOVERY(CCV(ccv, t_flags));
   newreno_cc_algo.ack_received(ccv, type);
   ENTER_CONGRECOVERY(CCV(ccv, t_flags));
  } else
   newreno_cc_algo.ack_received(ccv, type);

  if (type == CC_DUPACK)
   bytes_acked = min(ccv->bytes_this_ack, CCV(ccv, t_maxseg));

  if (type == CC_ACK)
   bytes_acked = ccv->bytes_this_ack;


  dctcp_data->bytes_total += bytes_acked;


  if (dctcp_data->ece_curr) {


   if (!dctcp_data->ece_prev
       && bytes_acked > CCV(ccv, t_maxseg)) {
    dctcp_data->bytes_ecn +=
        (bytes_acked - CCV(ccv, t_maxseg));
   } else
    dctcp_data->bytes_ecn += bytes_acked;
   dctcp_data->ece_prev = 1;
  } else {
   if (dctcp_data->ece_prev
       && bytes_acked > CCV(ccv, t_maxseg))
    dctcp_data->bytes_ecn += CCV(ccv, t_maxseg);
   dctcp_data->ece_prev = 0;
  }
  dctcp_data->ece_curr = 0;





  if ((IN_FASTRECOVERY(CCV(ccv, t_flags)) &&
      SEQ_GEQ(ccv->curack, CCV(ccv, snd_recover))) ||
      (!IN_FASTRECOVERY(CCV(ccv, t_flags)) &&
      SEQ_GT(ccv->curack, dctcp_data->save_sndnxt)))
   dctcp_update_alpha(ccv);
 } else
  newreno_cc_algo.ack_received(ccv, type);
}
