
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cubic {int max_cwnd; int t_last_cong; int K; } ;
struct cc_var {struct cubic* cc_data; } ;
struct TYPE_2__ {int (* after_idle ) (struct cc_var*) ;} ;


 int CCV (struct cc_var*,int ) ;
 int cubic_k (int) ;
 TYPE_1__ newreno_cc_algo ;
 int snd_cwnd ;
 int stub1 (struct cc_var*) ;
 int t_maxseg ;
 int ticks ;
 int ulmax (int,int) ;

__attribute__((used)) static void
cubic_after_idle(struct cc_var *ccv)
{
 struct cubic *cubic_data;

 cubic_data = ccv->cc_data;

 cubic_data->max_cwnd = ulmax(cubic_data->max_cwnd, CCV(ccv, snd_cwnd));
 cubic_data->K = cubic_k(cubic_data->max_cwnd / CCV(ccv, t_maxseg));

 newreno_cc_algo.after_idle(ccv);
 cubic_data->t_last_cong = ticks;
}
