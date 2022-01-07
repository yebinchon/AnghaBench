
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct snd_dbuf {unsigned int bufsize; int fmt; } ;


 int * sndbuf_getbuf (struct snd_dbuf*) ;
 int sndbuf_getfreeptr (struct snd_dbuf*) ;
 int sndbuf_zerodata (int ) ;

void
sndbuf_clear(struct snd_dbuf *b, unsigned int length)
{
 int i;
 u_char data, *p;

 if (length == 0)
  return;
 if (length > b->bufsize)
  length = b->bufsize;

 data = sndbuf_zerodata(b->fmt);

 i = sndbuf_getfreeptr(b);
 p = sndbuf_getbuf(b);
 while (length > 0) {
  p[i] = data;
  length--;
  i++;
  if (i >= b->bufsize)
   i = 0;
 }
}
