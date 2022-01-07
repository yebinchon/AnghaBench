
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int total; int prev_total; } ;


 int SNDBUF_LOCKASSERT (struct snd_dbuf*) ;

void
sndbuf_updateprevtotal(struct snd_dbuf *b)
{
 SNDBUF_LOCKASSERT(b);

 b->prev_total = b->total;
}
