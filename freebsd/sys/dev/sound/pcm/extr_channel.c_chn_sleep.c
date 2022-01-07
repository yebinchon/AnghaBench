
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int flags; int lock; int intr_cv; } ;


 int CHN_F_DEAD ;
 int CHN_F_SLEEPING ;
 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int EINVAL ;
 int cv_timedwait_sig (int *,int ,int) ;

__attribute__((used)) static int
chn_sleep(struct pcm_channel *c, int timeout)
{
 int ret;

 CHN_LOCKASSERT(c);

 if (c->flags & CHN_F_DEAD)
  return (EINVAL);

 c->flags |= CHN_F_SLEEPING;
 ret = cv_timedwait_sig(&c->intr_cv, c->lock, timeout);
 c->flags &= ~CHN_F_SLEEPING;

 return ((c->flags & CHN_F_DEAD) ? EINVAL : ret);
}
