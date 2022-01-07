
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int dummy; } ;
struct pcm_channel {scalar_t__ direction; int flags; struct snd_dbuf* bufhard; } ;


 int CHN_F_CLOSING ;
 int CHN_F_TRIGGERED ;
 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int DEB (int ) ;
 int KASSERT (int,char*) ;
 scalar_t__ PCMDIR_PLAY ;
 int PCMTRIG_ABORT ;
 int chn_sync (struct pcm_channel*,int ) ;
 int chn_trigger (struct pcm_channel*,int ) ;
 int printf (char*,int) ;
 int sndbuf_setrun (struct snd_dbuf*,int ) ;

int
chn_flush(struct pcm_channel *c)
{
     struct snd_dbuf *b = c->bufhard;

 CHN_LOCKASSERT(c);
 KASSERT(c->direction == PCMDIR_PLAY, ("chn_flush on bad channel"));
     DEB(printf("chn_flush: c->flags 0x%08x\n", c->flags));

 c->flags |= CHN_F_CLOSING;
 chn_sync(c, 0);
 c->flags &= ~CHN_F_TRIGGERED;

 chn_trigger(c, PCMTRIG_ABORT);
 sndbuf_setrun(b, 0);

     c->flags &= ~CHN_F_CLOSING;
     return 0;
}
