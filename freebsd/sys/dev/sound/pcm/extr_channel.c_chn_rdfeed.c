
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int dummy; } ;
struct pcm_channel {int flags; int xruns; int feeder; struct snd_dbuf* bufsoft; struct snd_dbuf* bufhard; } ;


 int CHN_F_MMAP ;
 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int chn_wakeup (struct pcm_channel*) ;
 int sndbuf_dispose (struct snd_dbuf*,int *,unsigned int) ;
 int sndbuf_feed (struct snd_dbuf*,struct snd_dbuf*,struct pcm_channel*,int ,unsigned int) ;
 unsigned int sndbuf_getfree (struct snd_dbuf*) ;
 unsigned int sndbuf_getready (struct snd_dbuf*) ;

__attribute__((used)) static void
chn_rdfeed(struct pcm_channel *c)
{
     struct snd_dbuf *b = c->bufhard;
     struct snd_dbuf *bs = c->bufsoft;
 unsigned int amt;

 CHN_LOCKASSERT(c);

 if (c->flags & CHN_F_MMAP)
  sndbuf_dispose(bs, ((void*)0), sndbuf_getready(bs));

 amt = sndbuf_getfree(bs);
 if (amt > 0)
  sndbuf_feed(b, bs, c, c->feeder, amt);

 amt = sndbuf_getready(b);
 if (amt > 0) {
  c->xruns++;
  sndbuf_dispose(b, ((void*)0), amt);
 }

 if (sndbuf_getready(bs) > 0)
  chn_wakeup(c);
}
