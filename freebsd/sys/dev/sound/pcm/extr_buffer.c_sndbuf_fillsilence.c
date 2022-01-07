
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {scalar_t__ bufsize; scalar_t__ rl; scalar_t__ rp; int fmt; } ;


 int memset (int ,int ,scalar_t__) ;
 int sndbuf_getbuf (struct snd_dbuf*) ;
 int sndbuf_zerodata (int ) ;

void
sndbuf_fillsilence(struct snd_dbuf *b)
{
 if (b->bufsize > 0)
  memset(sndbuf_getbuf(b), sndbuf_zerodata(b->fmt), b->bufsize);
 b->rp = 0;
 b->rl = b->bufsize;
}
