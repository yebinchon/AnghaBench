
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {void* buf; } ;



void *
sndbuf_getbuf(struct snd_dbuf *b)
{
 return b->buf;
}
