
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int bs_running; int bs_bstpcallout; } ;


 int BSTP_LOCK (struct bstp_state*) ;
 int BSTP_UNLOCK (struct bstp_state*) ;
 int bstp_reinit (struct bstp_state*) ;
 int bstp_tick ;
 int callout_reset (int *,int ,int ,struct bstp_state*) ;
 int hz ;

void
bstp_init(struct bstp_state *bs)
{
 BSTP_LOCK(bs);
 callout_reset(&bs->bs_bstpcallout, hz, bstp_tick, bs);
 bs->bs_running = 1;
 bstp_reinit(bs);
 BSTP_UNLOCK(bs);
}
