
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdg {int qdiffmax_q; int qdiffmin_q; scalar_t__ num_samples; int sample_q_size; scalar_t__ consec_cong_cnt; scalar_t__ rtt_count; scalar_t__ window_incr; scalar_t__ minrtt_in_prevrtt; int minrtt_in_rtt; scalar_t__ maxrtt_in_prevrtt; scalar_t__ maxrtt_in_rtt; int queue_state; scalar_t__ min_qtrend; scalar_t__ max_qtrend; scalar_t__ shadow_w; } ;
struct cc_var {struct cdg* cc_data; } ;


 int CDG_Q_UNKNOWN ;
 int ENOMEM ;
 int INT_MAX ;
 int M_CDG ;
 int M_NOWAIT ;
 int STAILQ_INIT (int *) ;
 int V_cdg_smoothing_factor ;
 struct cdg* malloc (int,int ,int ) ;

__attribute__((used)) static int
cdg_cb_init(struct cc_var *ccv)
{
 struct cdg *cdg_data;

 cdg_data = malloc(sizeof(struct cdg), M_CDG, M_NOWAIT);
 if (cdg_data == ((void*)0))
  return (ENOMEM);

 cdg_data->shadow_w = 0;
 cdg_data->max_qtrend = 0;
 cdg_data->min_qtrend = 0;
 cdg_data->queue_state = CDG_Q_UNKNOWN;
 cdg_data->maxrtt_in_rtt = 0;
 cdg_data->maxrtt_in_prevrtt = 0;
 cdg_data->minrtt_in_rtt = INT_MAX;
 cdg_data->minrtt_in_prevrtt = 0;
 cdg_data->window_incr = 0;
 cdg_data->rtt_count = 0;
 cdg_data->consec_cong_cnt = 0;
 cdg_data->sample_q_size = V_cdg_smoothing_factor;
 cdg_data->num_samples = 0;
 STAILQ_INIT(&cdg_data->qdiffmin_q);
 STAILQ_INIT(&cdg_data->qdiffmax_q);

 ccv->cc_data = cdg_data;

 return (0);
}
