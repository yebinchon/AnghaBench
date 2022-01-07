
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int dummy; } ;
struct bstp_port {int bp_active; struct bstp_state* bp_bs; } ;


 int BSTP_LOCK (struct bstp_state*) ;
 int BSTP_UNLOCK (struct bstp_state*) ;
 int bstp_ifupdstatus (struct bstp_port*,int ) ;
 int bstp_update_state (struct bstp_state*,struct bstp_port*) ;

void
bstp_linkstate(struct bstp_port *bp)
{
 struct bstp_state *bs = bp->bp_bs;

 if (!bp->bp_active)
  return;

 bstp_ifupdstatus(bp, 0);
 BSTP_LOCK(bs);
 bstp_update_state(bs, bp);
 BSTP_UNLOCK(bs);
}
