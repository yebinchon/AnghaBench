
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int dummy; } ;
struct pcm_channel {scalar_t__ blocks; struct snd_dbuf* bufsoft; struct snd_dbuf* bufhard; } ;


 int sndbuf_reset (struct snd_dbuf*) ;

void
chn_resetbuf(struct pcm_channel *c)
{
 struct snd_dbuf *b = c->bufhard;
 struct snd_dbuf *bs = c->bufsoft;

 c->blocks = 0;
 sndbuf_reset(b);
 sndbuf_reset(bs);
}
