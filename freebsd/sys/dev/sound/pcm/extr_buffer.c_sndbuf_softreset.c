
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {scalar_t__ bufsize; scalar_t__ buf; scalar_t__ rl; } ;


 int sndbuf_clear (struct snd_dbuf*,scalar_t__) ;

void
sndbuf_softreset(struct snd_dbuf *b)
{
 b->rl = 0;
 if (b->buf && b->bufsize > 0)
  sndbuf_clear(b, b->bufsize);
}
