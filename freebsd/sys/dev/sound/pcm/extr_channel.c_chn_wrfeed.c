
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int dummy; } ;
struct pcm_channel {int flags; int xruns; int feeder; struct snd_dbuf* bufsoft; struct snd_dbuf* bufhard; } ;


 int CHN_F_CLOSING ;
 int CHN_F_MMAP ;
 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int chn_wakeup (struct pcm_channel*) ;
 unsigned int imax (int ,scalar_t__) ;
 unsigned int min (unsigned int,unsigned int) ;
 int sndbuf_acquire (struct snd_dbuf*,int *,unsigned int) ;
 int sndbuf_feed (struct snd_dbuf*,struct snd_dbuf*,struct pcm_channel*,int ,unsigned int) ;
 unsigned int sndbuf_getfree (struct snd_dbuf*) ;
 unsigned int sndbuf_getready (struct snd_dbuf*) ;
 unsigned int sndbuf_getsize (struct snd_dbuf*) ;
 scalar_t__ sndbuf_xbytes (unsigned int,struct snd_dbuf*,struct snd_dbuf*) ;

__attribute__((used)) static void
chn_wrfeed(struct pcm_channel *c)
{
     struct snd_dbuf *b = c->bufhard;
     struct snd_dbuf *bs = c->bufsoft;
 unsigned int amt, want, wasfree;

 CHN_LOCKASSERT(c);

 if ((c->flags & CHN_F_MMAP) && !(c->flags & CHN_F_CLOSING))
  sndbuf_acquire(bs, ((void*)0), sndbuf_getfree(bs));

 wasfree = sndbuf_getfree(b);
 want = min(sndbuf_getsize(b),
     imax(0, sndbuf_xbytes(sndbuf_getsize(bs), bs, b) -
      sndbuf_getready(b)));
 amt = min(wasfree, want);
 if (amt > 0)
  sndbuf_feed(bs, b, c, c->feeder, amt);




 if (sndbuf_getready(b) < want)
  c->xruns++;

 if (sndbuf_getfree(b) < wasfree)
  chn_wakeup(c);
}
