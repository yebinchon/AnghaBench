
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dctcp {scalar_t__ num_cong_events; scalar_t__ ece_prev; scalar_t__ ece_curr; scalar_t__ ce_prev; scalar_t__ save_sndnxt; int alpha; scalar_t__ bytes_total; scalar_t__ bytes_ecn; } ;
struct cc_var {struct dctcp* cc_data; } ;


 int ENOMEM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int M_dctcp ;
 int V_dctcp_alpha ;
 struct dctcp* malloc (int,int ,int) ;

__attribute__((used)) static int
dctcp_cb_init(struct cc_var *ccv)
{
 struct dctcp *dctcp_data;

 dctcp_data = malloc(sizeof(struct dctcp), M_dctcp, M_NOWAIT|M_ZERO);

 if (dctcp_data == ((void*)0))
  return (ENOMEM);


 dctcp_data->bytes_ecn = 0;
 dctcp_data->bytes_total = 0;
 dctcp_data->alpha = V_dctcp_alpha;
 dctcp_data->save_sndnxt = 0;
 dctcp_data->ce_prev = 0;
 dctcp_data->ece_curr = 0;
 dctcp_data->ece_prev = 0;
 dctcp_data->num_cong_events = 0;

 ccv->cc_data = dctcp_data;
 return (0);
}
