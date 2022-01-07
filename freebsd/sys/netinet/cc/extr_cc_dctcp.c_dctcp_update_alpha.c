
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dctcp {int alpha; int bytes_total; int save_sndnxt; scalar_t__ bytes_ecn; } ;
struct cc_var {struct dctcp* cc_data; } ;


 int CCV (struct cc_var*,int ) ;
 int DCTCP_SHIFT ;
 int MAX_ALPHA_VALUE ;
 int V_dctcp_shift_g ;
 int max (int,int) ;
 int snd_nxt ;
 int ulmin (int,int ) ;

__attribute__((used)) static void
dctcp_update_alpha(struct cc_var *ccv)
{
 struct dctcp *dctcp_data;
 int alpha_prev;

 dctcp_data = ccv->cc_data;
 alpha_prev = dctcp_data->alpha;
 dctcp_data->bytes_total = max(dctcp_data->bytes_total, 1);
 dctcp_data->alpha = ulmin(alpha_prev - (alpha_prev >> V_dctcp_shift_g) +
     ((uint64_t)dctcp_data->bytes_ecn << (DCTCP_SHIFT - V_dctcp_shift_g)) /
     dctcp_data->bytes_total, MAX_ALPHA_VALUE);


 dctcp_data->bytes_ecn = 0;
 dctcp_data->bytes_total = 0;
 dctcp_data->save_sndnxt = CCV(ccv, snd_nxt);
}
