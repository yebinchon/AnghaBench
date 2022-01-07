
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htcp {int minrtt; int maxrtt; int beta; } ;
struct cc_var {struct htcp* cc_data; } ;


 int HTCP_MAXBETA ;
 int HTCP_MINBETA ;
 int HTCP_SHIFT ;
 int TCPTV_SRTTBASE ;
 scalar_t__ V_htcp_adaptive_backoff ;
 int max (int ,int) ;
 int min (int ,int ) ;

__attribute__((used)) static void
htcp_recalc_beta(struct cc_var *ccv)
{
 struct htcp *htcp_data;

 htcp_data = ccv->cc_data;







 if (V_htcp_adaptive_backoff && htcp_data->minrtt != TCPTV_SRTTBASE &&
     htcp_data->maxrtt != TCPTV_SRTTBASE)
  htcp_data->beta = min(max(HTCP_MINBETA,
      (htcp_data->minrtt << HTCP_SHIFT) / htcp_data->maxrtt),
      HTCP_MAXBETA);
 else
  htcp_data->beta = HTCP_MINBETA;
}
