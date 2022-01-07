
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {unsigned int blkcnt; } ;



void
sndbuf_setblkcnt(struct snd_dbuf *b, unsigned int blkcnt)
{
 b->blkcnt = blkcnt;
}
