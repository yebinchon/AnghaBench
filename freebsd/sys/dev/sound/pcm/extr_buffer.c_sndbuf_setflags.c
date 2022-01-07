
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct snd_dbuf {int flags; } ;



void
sndbuf_setflags(struct snd_dbuf *b, u_int32_t flags, int on)
{
 b->flags &= ~flags;
 if (on)
  b->flags |= flags;
}
