
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
typedef int u_int32_t ;
struct sc_chinfo {int offset; int size; int num; int buffer; scalar_t__ data; TYPE_1__* parent; } ;
struct TYPE_4__ {int buffer; } ;
typedef TYPE_2__ sample32_t ;
struct TYPE_3__ {TYPE_2__* pbuf; } ;


 int ENVY24HT_PLAY_CHNUM ;
 int sndbuf_getready (int ) ;
 int sndbuf_getreadyptr (int ) ;

__attribute__((used)) static void
envy24ht_p8u(struct sc_chinfo *ch)
{
 int length;
 sample32_t *dmabuf;
 u_int8_t *data;
 int src, dst, ssize, dsize, slot;
 int i;

 length = sndbuf_getready(ch->buffer) / 2;
 dmabuf = ch->parent->pbuf;
 data = (u_int8_t *)ch->data;
 src = sndbuf_getreadyptr(ch->buffer);
 dst = src / 2 + ch->offset;
 ssize = ch->size;
 dsize = ch->size / 4;
 slot = ch->num * 2;

 for (i = 0; i < length; i++) {
  dmabuf[dst * ENVY24HT_PLAY_CHNUM + slot].buffer = ((u_int32_t)data[src] ^ 0x80) << 24;
  dmabuf[dst * ENVY24HT_PLAY_CHNUM + slot + 1].buffer = ((u_int32_t)data[src + 1] ^ 0x80) << 24;
  dst++;
  dst %= dsize;
  src += 2;
  src %= ssize;
 }

 return;
}
