
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int dummy; } ;


 int CHN_LOCK (struct pcm_channel*) ;
 scalar_t__ CHN_LOCKOWNED (struct pcm_channel*) ;
 int CHN_UNLOCK (struct pcm_channel*) ;
 int chn_intr_locked (struct pcm_channel*) ;

void
chn_intr(struct pcm_channel *c)
{

 if (CHN_LOCKOWNED(c)) {
  chn_intr_locked(c);
  return;
 }

 CHN_LOCK(c);
 chn_intr_locked(c);
 CHN_UNLOCK(c);
}
