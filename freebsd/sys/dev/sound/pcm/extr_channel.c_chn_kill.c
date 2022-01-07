
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int dummy; } ;
struct pcm_channel {int flags; int devinfo; int methods; struct snd_dbuf* bufsoft; struct snd_dbuf* bufhard; } ;


 scalar_t__ CHANNEL_FREE (int ,int ) ;
 int CHN_F_DEAD ;
 int CHN_LOCK (struct pcm_channel*) ;
 scalar_t__ CHN_STARTED (struct pcm_channel*) ;
 int CHN_UNLOCK (struct pcm_channel*) ;
 int PCMTRIG_ABORT ;
 int chn_lockdestroy (struct pcm_channel*) ;
 scalar_t__ chn_removefeeder (struct pcm_channel*) ;
 int chn_trigger (struct pcm_channel*,int ) ;
 int sndbuf_destroy (struct snd_dbuf*) ;
 int sndbuf_free (struct snd_dbuf*) ;

int
chn_kill(struct pcm_channel *c)
{
     struct snd_dbuf *b = c->bufhard;
     struct snd_dbuf *bs = c->bufsoft;

 if (CHN_STARTED(c)) {
  CHN_LOCK(c);
  chn_trigger(c, PCMTRIG_ABORT);
  CHN_UNLOCK(c);
 }
 while (chn_removefeeder(c) == 0)
  ;
 if (CHANNEL_FREE(c->methods, c->devinfo))
  sndbuf_free(b);
 sndbuf_destroy(bs);
 sndbuf_destroy(b);
 CHN_LOCK(c);
 c->flags |= CHN_F_DEAD;
 chn_lockdestroy(c);

 return (0);
}
