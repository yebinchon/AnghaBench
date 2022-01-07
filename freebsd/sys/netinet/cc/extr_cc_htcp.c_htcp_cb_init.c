
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htcp {int t_last_cong; scalar_t__ prev_cwnd; void* minrtt; void* maxrtt; int beta; int alpha; } ;
struct cc_var {struct htcp* cc_data; } ;


 int ENOMEM ;
 int HTCP_INIT_ALPHA ;
 int HTCP_MINBETA ;
 int M_HTCP ;
 int M_NOWAIT ;
 void* TCPTV_SRTTBASE ;
 struct htcp* malloc (int,int ,int ) ;
 int ticks ;

__attribute__((used)) static int
htcp_cb_init(struct cc_var *ccv)
{
 struct htcp *htcp_data;

 htcp_data = malloc(sizeof(struct htcp), M_HTCP, M_NOWAIT);

 if (htcp_data == ((void*)0))
  return (ENOMEM);


 htcp_data->alpha = HTCP_INIT_ALPHA;
 htcp_data->beta = HTCP_MINBETA;
 htcp_data->maxrtt = TCPTV_SRTTBASE;
 htcp_data->minrtt = TCPTV_SRTTBASE;
 htcp_data->prev_cwnd = 0;
 htcp_data->t_last_cong = ticks;

 ccv->cc_data = htcp_data;

 return (0);
}
