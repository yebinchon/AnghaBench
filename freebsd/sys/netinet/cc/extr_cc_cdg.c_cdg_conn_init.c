
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdg {int shadow_w; } ;
struct cc_var {struct cdg* cc_data; } ;


 int CCV (struct cc_var*,int ) ;
 int snd_cwnd ;

__attribute__((used)) static void
cdg_conn_init(struct cc_var *ccv)
{
 struct cdg *cdg_data = ccv->cc_data;





 cdg_data->shadow_w = CCV(ccv, snd_cwnd);
}
