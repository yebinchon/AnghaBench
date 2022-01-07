
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {scalar_t__ bufsize; scalar_t__ buf; scalar_t__ xrun; scalar_t__ total; scalar_t__ prev_total; scalar_t__ dl; scalar_t__ rl; scalar_t__ rp; scalar_t__ hp; } ;


 int sndbuf_clear (struct snd_dbuf*,scalar_t__) ;
 int sndbuf_clearshadow (struct snd_dbuf*) ;

void
sndbuf_reset(struct snd_dbuf *b)
{
 b->hp = 0;
 b->rp = 0;
 b->rl = 0;
 b->dl = 0;
 b->prev_total = 0;
 b->total = 0;
 b->xrun = 0;
 if (b->buf && b->bufsize > 0)
  sndbuf_clear(b, b->bufsize);
 sndbuf_clearshadow(b);
}
