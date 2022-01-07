
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int tmpbuf; } ;
struct pcm_feeder {int dummy; } ;
struct pcm_channel {int dummy; } ;


 int EINVAL ;
 unsigned int FEEDER_FEED (struct pcm_feeder*,struct pcm_channel*,int ,int ,struct snd_dbuf*) ;
 int KASSERT (int,char*) ;
 int SND_FXDIV_MAX ;
 unsigned int SND_FXROUND (int ,int ) ;
 int min (unsigned int,unsigned int) ;
 unsigned int snd_feeder_maxcycle ;
 unsigned int snd_feeder_maxfeed ;
 int sndbuf_acquire (struct snd_dbuf*,int ,unsigned int) ;
 int sndbuf_getalign (struct snd_dbuf*) ;
 unsigned int sndbuf_getfree (struct snd_dbuf*) ;

int
sndbuf_feed(struct snd_dbuf *from, struct snd_dbuf *to, struct pcm_channel *channel, struct pcm_feeder *feeder, unsigned int count)
{
 unsigned int cnt, maxfeed;
 KASSERT(count > 0, ("can't feed 0 bytes"));

 if (sndbuf_getfree(to) < count)
  return (EINVAL);

 maxfeed = SND_FXROUND(SND_FXDIV_MAX, sndbuf_getalign(to));

 do {
  cnt = FEEDER_FEED(feeder, channel, to->tmpbuf,
      min(count, maxfeed), from);
  if (cnt == 0)
   break;
  sndbuf_acquire(to, to->tmpbuf, cnt);
  count -= cnt;



 } while (count != 0);






 return (0);
}
