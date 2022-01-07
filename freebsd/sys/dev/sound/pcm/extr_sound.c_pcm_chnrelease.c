
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int pid; int comm; int flags; int parentsnddev; } ;


 int CHN_COMM_UNUSED ;
 int CHN_F_BUSY ;
 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int CHN_UNLOCK (struct pcm_channel*) ;
 int PCM_BUSYASSERT (int ) ;
 int strlcpy (int ,int ,int) ;

int
pcm_chnrelease(struct pcm_channel *c)
{
 PCM_BUSYASSERT(c->parentsnddev);
 CHN_LOCKASSERT(c);

 c->flags &= ~CHN_F_BUSY;
 c->pid = -1;
 strlcpy(c->comm, CHN_COMM_UNUSED, sizeof(c->comm));
 CHN_UNLOCK(c);

 return (0);
}
