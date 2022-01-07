
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int dummy; } ;
struct bstp_port {int bp_priority; struct bstp_state* bp_bs; } ;


 int BSTP_LOCK (struct bstp_state*) ;
 int BSTP_MAX_PORT_PRIORITY ;
 int BSTP_UNLOCK (struct bstp_state*) ;
 int EINVAL ;
 int bstp_reinit (struct bstp_state*) ;

int
bstp_set_port_priority(struct bstp_port *bp, int pri)
{
 struct bstp_state *bs = bp->bp_bs;

 if (pri < 0 || pri > BSTP_MAX_PORT_PRIORITY)
  return (EINVAL);


 pri -= pri % 16;

 BSTP_LOCK(bs);
 bp->bp_priority = pri;
 bstp_reinit(bs);
 BSTP_UNLOCK(bs);
 return (0);
}
