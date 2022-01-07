
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct snd_dbuf {int dummy; } ;
struct pcm_channel {int flags; struct snd_dbuf* bufsoft; } ;


 int CHN_F_MMAP ;
 int CHN_F_TRIGGERED ;
 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int chn_pollreset (struct pcm_channel*) ;
 scalar_t__ chn_polltrigger (struct pcm_channel*) ;
 int chn_start (struct pcm_channel*,int) ;
 int selrecord (struct thread*,int ) ;
 int sndbuf_getsel (struct snd_dbuf*) ;

int
chn_poll(struct pcm_channel *c, int ev, struct thread *td)
{
 struct snd_dbuf *bs = c->bufsoft;
 int ret;

 CHN_LOCKASSERT(c);

     if (!(c->flags & (CHN_F_MMAP | CHN_F_TRIGGERED))) {
  ret = chn_start(c, 1);
  if (ret != 0)
   return (0);
 }

 ret = 0;
 if (chn_polltrigger(c)) {
  chn_pollreset(c);
  ret = ev;
 } else
  selrecord(td, sndbuf_getsel(bs));

 return (ret);
}
