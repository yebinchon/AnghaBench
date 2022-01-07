
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dctcp {int save_sndnxt; } ;
struct cc_var {struct dctcp* cc_data; } ;


 int CCV (struct cc_var*,int ) ;
 int TF_ECN_PERMIT ;
 int snd_nxt ;
 int t_flags ;

__attribute__((used)) static void
dctcp_conn_init(struct cc_var *ccv)
{
 struct dctcp *dctcp_data;

 dctcp_data = ccv->cc_data;

 if (CCV(ccv, t_flags) & TF_ECN_PERMIT)
  dctcp_data->save_sndnxt = CCV(ccv, snd_nxt);
}
