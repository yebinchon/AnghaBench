
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int bs_bridge_priority; } ;


 int BSTP_LOCK (struct bstp_state*) ;
 int BSTP_MAX_PRIORITY ;
 int BSTP_UNLOCK (struct bstp_state*) ;
 int EINVAL ;
 int bstp_reinit (struct bstp_state*) ;

int
bstp_set_priority(struct bstp_state *bs, int pri)
{
 if (pri < 0 || pri > BSTP_MAX_PRIORITY)
  return (EINVAL);


 pri -= pri % 4096;

 BSTP_LOCK(bs);
 bs->bs_bridge_priority = pri;
 bstp_reinit(bs);
 BSTP_UNLOCK(bs);
 return (0);
}
