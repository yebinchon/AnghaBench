
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chd {int shadow_w; scalar_t__ loss_compete; scalar_t__ maxrtt_in_rtt; scalar_t__ prev_backoff_qdly; } ;
struct cc_var {struct chd* cc_data; } ;


 int CCV (struct cc_var*,int ) ;
 int snd_cwnd ;

__attribute__((used)) static void
chd_conn_init(struct cc_var *ccv)
{
 struct chd *chd_data;

 chd_data = ccv->cc_data;
 chd_data->prev_backoff_qdly = 0;
 chd_data->maxrtt_in_rtt = 0;
 chd_data->loss_compete = 0;




 chd_data->shadow_w = CCV(ccv, snd_cwnd);
}
