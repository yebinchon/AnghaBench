
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int bs_bridge_max_age; } ;


 int BSTP_LOCK (struct bstp_state*) ;
 int BSTP_MAX_MAX_AGE ;
 int BSTP_MIN_MAX_AGE ;
 int BSTP_TICK_VAL ;
 int BSTP_UNLOCK (struct bstp_state*) ;
 int EINVAL ;
 int bstp_reinit (struct bstp_state*) ;

int
bstp_set_maxage(struct bstp_state *bs, int t)
{

 t *= BSTP_TICK_VAL;

 if (t < BSTP_MIN_MAX_AGE || t > BSTP_MAX_MAX_AGE)
  return (EINVAL);

 BSTP_LOCK(bs);
 bs->bs_bridge_max_age = t;
 bstp_reinit(bs);
 BSTP_UNLOCK(bs);
 return (0);
}
