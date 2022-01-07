
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct snd_dbuf {scalar_t__ bufsize; int rl; scalar_t__ rp; int fmt; } ;


 int memset (int ,int ,scalar_t__) ;
 int min (scalar_t__,int ) ;
 int sndbuf_getbuf (struct snd_dbuf*) ;
 int sndbuf_zerodata (int ) ;

void
sndbuf_fillsilence_rl(struct snd_dbuf *b, u_int rl)
{
 if (b->bufsize > 0)
  memset(sndbuf_getbuf(b), sndbuf_zerodata(b->fmt), b->bufsize);
 b->rp = 0;
 b->rl = min(b->bufsize, rl);
}
