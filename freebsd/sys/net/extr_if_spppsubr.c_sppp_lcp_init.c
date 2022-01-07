
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opts; int timeout; int max_terminate; int max_configure; int max_failure; int their_mru; int mru; scalar_t__ protos; scalar_t__ magic; } ;
struct sppp {int * ch; TYPE_1__ lcp; scalar_t__* pp_rseq; scalar_t__* pp_seq; scalar_t__* fail_counter; int * state; } ;


 size_t IDX_LCP ;
 int LCP_OPT_MAGIC ;
 int PP_MTU ;
 int STATE_INITIAL ;
 int callout_init (int *,int) ;
 int hz ;

__attribute__((used)) static void
sppp_lcp_init(struct sppp *sp)
{
 sp->lcp.opts = (1 << LCP_OPT_MAGIC);
 sp->lcp.magic = 0;
 sp->state[IDX_LCP] = STATE_INITIAL;
 sp->fail_counter[IDX_LCP] = 0;
 sp->pp_seq[IDX_LCP] = 0;
 sp->pp_rseq[IDX_LCP] = 0;
 sp->lcp.protos = 0;
 sp->lcp.mru = sp->lcp.their_mru = PP_MTU;


 sp->lcp.timeout = 3 * hz;
 sp->lcp.max_terminate = 2;
 sp->lcp.max_configure = 10;
 sp->lcp.max_failure = 10;
  callout_init(&sp->ch[IDX_LCP], 1);
}
