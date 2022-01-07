
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int dummy; } ;
struct pcm_channel {int flags; struct snd_dbuf* bufsoft; struct snd_dbuf* bufhard; } ;


 int CHN_F_ABORTING ;
 int CHN_F_TRIGGERED ;
 int CHN_F_VIRTUAL ;
 int CHN_LOCKASSERT (struct pcm_channel*) ;
 scalar_t__ CHN_STOPPED (struct pcm_channel*) ;
 int PCMTRIG_ABORT ;
 int chn_dmaupdate (struct pcm_channel*) ;
 int chn_trigger (struct pcm_channel*,int ) ;
 int sndbuf_getready (struct snd_dbuf*) ;
 int sndbuf_setrun (struct snd_dbuf*,int ) ;

int
chn_abort(struct pcm_channel *c)
{
     int missing = 0;
     struct snd_dbuf *b = c->bufhard;
     struct snd_dbuf *bs = c->bufsoft;

 CHN_LOCKASSERT(c);
 if (CHN_STOPPED(c))
  return 0;
 c->flags |= CHN_F_ABORTING;

 c->flags &= ~CHN_F_TRIGGERED;

 chn_trigger(c, PCMTRIG_ABORT);
 sndbuf_setrun(b, 0);
 if (!(c->flags & CHN_F_VIRTUAL))
  chn_dmaupdate(c);
     missing = sndbuf_getready(bs);

 c->flags &= ~CHN_F_ABORTING;
 return missing;
}
