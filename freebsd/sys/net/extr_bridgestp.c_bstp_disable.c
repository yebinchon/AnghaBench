
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int dummy; } ;
struct bstp_port {int bp_active; struct bstp_state* bp_bs; } ;


 int BSTP_LOCK (struct bstp_state*) ;
 int BSTP_UNLOCK (struct bstp_state*) ;
 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct bstp_port*,int ) ;
 int bp_next ;
 int bstp_disable_port (struct bstp_state*,struct bstp_port*) ;
 int bstp_reinit (struct bstp_state*) ;

void
bstp_disable(struct bstp_port *bp)
{
 struct bstp_state *bs = bp->bp_bs;

 KASSERT(bp->bp_active == 1, ("not a bstp member"));

 BSTP_LOCK(bs);
 bstp_disable_port(bs, bp);
 LIST_REMOVE(bp, bp_next);
 bp->bp_active = 0;
 bstp_reinit(bs);
 BSTP_UNLOCK(bs);
}
