
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int dummy; } ;
struct bstp_port {int bp_operedge; int bp_flags; struct bstp_state* bp_bs; } ;


 int BSTP_LOCK (struct bstp_state*) ;
 int BSTP_PORT_ADMEDGE ;
 int BSTP_UNLOCK (struct bstp_state*) ;

int
bstp_set_edge(struct bstp_port *bp, int set)
{
 struct bstp_state *bs = bp->bp_bs;

 BSTP_LOCK(bs);
 if ((bp->bp_operedge = set) == 0)
  bp->bp_flags &= ~BSTP_PORT_ADMEDGE;
 else
  bp->bp_flags |= BSTP_PORT_ADMEDGE;
 BSTP_UNLOCK(bs);
 return (0);
}
