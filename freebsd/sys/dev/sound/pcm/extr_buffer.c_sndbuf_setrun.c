
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int blksz; int dl; } ;



void
sndbuf_setrun(struct snd_dbuf *b, int go)
{
 b->dl = go? b->blksz : 0;
}
