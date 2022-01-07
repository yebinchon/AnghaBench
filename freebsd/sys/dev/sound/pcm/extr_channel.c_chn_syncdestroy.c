
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmchan_syncmember {int id; int members; struct pcmchan_syncmember* parent; } ;
struct pcmchan_syncgroup {int id; int members; struct pcmchan_syncgroup* parent; } ;
struct pcm_channel {struct pcmchan_syncmember* sm; } ;


 int KASSERT (int ,char*) ;
 int MA_OWNED ;
 int M_DEVBUF ;
 int PCM_SG_LOCKASSERT (int ) ;
 scalar_t__ SLIST_EMPTY (int *) ;
 int SLIST_REMOVE (int *,struct pcmchan_syncmember*,int ,int ) ;
 int free (struct pcmchan_syncmember*,int ) ;
 int link ;
 int pcmchan_syncgroup ;
 int pcmchan_syncmember ;
 int snd_pcm_syncgroups ;

int
chn_syncdestroy(struct pcm_channel *c)
{
 struct pcmchan_syncmember *sm;
 struct pcmchan_syncgroup *sg;
 int sg_id;

 sg_id = 0;

 PCM_SG_LOCKASSERT(MA_OWNED);

 if (c->sm != ((void*)0)) {
  sm = c->sm;
  sg = sm->parent;
  c->sm = ((void*)0);

  KASSERT(sg != ((void*)0), ("syncmember has null parent"));

  SLIST_REMOVE(&sg->members, sm, pcmchan_syncmember, link);
  free(sm, M_DEVBUF);

  if (SLIST_EMPTY(&sg->members)) {
   SLIST_REMOVE(&snd_pcm_syncgroups, sg, pcmchan_syncgroup, link);
   sg_id = sg->id;
   free(sg, M_DEVBUF);
  }
 }

 return sg_id;
}
