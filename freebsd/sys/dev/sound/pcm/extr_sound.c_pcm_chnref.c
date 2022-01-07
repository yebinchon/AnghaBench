
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int refcount; int parentsnddev; } ;


 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int PCM_BUSYASSERT (int ) ;

int
pcm_chnref(struct pcm_channel *c, int ref)
{
 PCM_BUSYASSERT(c->parentsnddev);
 CHN_LOCKASSERT(c);

 c->refcount += ref;

 return (c->refcount);
}
