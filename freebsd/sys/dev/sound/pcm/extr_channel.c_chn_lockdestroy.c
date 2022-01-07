
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int lock; int intr_cv; int cv; } ;


 int CHN_BROADCAST (int *) ;
 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int cv_destroy (int *) ;
 int snd_mtxfree (int ) ;

__attribute__((used)) static void
chn_lockdestroy(struct pcm_channel *c)
{
 CHN_LOCKASSERT(c);

 CHN_BROADCAST(&c->cv);
 CHN_BROADCAST(&c->intr_cv);

 cv_destroy(&c->cv);
 cv_destroy(&c->intr_cv);

 snd_mtxfree(c->lock);
}
