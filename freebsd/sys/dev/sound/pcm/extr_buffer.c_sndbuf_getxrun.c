
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {unsigned int xrun; } ;


 int SNDBUF_LOCKASSERT (struct snd_dbuf*) ;

unsigned int
sndbuf_getxrun(struct snd_dbuf *b)
{
 SNDBUF_LOCKASSERT(b);

 return b->xrun;
}
