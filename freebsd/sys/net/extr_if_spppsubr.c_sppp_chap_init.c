
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sppp {int * ch; scalar_t__* pp_rseq; scalar_t__* pp_seq; scalar_t__* fail_counter; int * state; } ;


 size_t IDX_CHAP ;
 int STATE_CLOSED ;
 int callout_init (int *,int) ;

__attribute__((used)) static void
sppp_chap_init(struct sppp *sp)
{

 sp->state[IDX_CHAP] = STATE_CLOSED;
 sp->fail_counter[IDX_CHAP] = 0;
 sp->pp_seq[IDX_CHAP] = 0;
 sp->pp_rseq[IDX_CHAP] = 0;
  callout_init(&sp->ch[IDX_CHAP], 1);
}
