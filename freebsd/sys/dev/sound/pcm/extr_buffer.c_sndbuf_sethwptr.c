
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {unsigned int hp; } ;


 int SNDBUF_LOCKASSERT (struct snd_dbuf*) ;

void
sndbuf_sethwptr(struct snd_dbuf *b, unsigned int ptr)
{
 SNDBUF_LOCKASSERT(b);

 b->hp = ptr;
}
