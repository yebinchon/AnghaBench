
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct atiixp_info {scalar_t__ polling; } ;
struct atiixp_dma_op {int dummy; } ;
struct atiixp_chinfo {int blksz; int blkcnt; scalar_t__ sgd_addr; TYPE_1__* sgd_table; int buffer; struct atiixp_info* parent; } ;
struct TYPE_2__ {void* next; void* size; void* status; void* addr; } ;


 void* htole16 (int) ;
 void* htole32 (int) ;
 int sndbuf_getbufaddr (int ) ;

__attribute__((used)) static void
atiixp_buildsgdt(struct atiixp_chinfo *ch)
{
 struct atiixp_info *sc = ch->parent;
 uint32_t addr, blksz, blkcnt;
 int i;

 addr = sndbuf_getbufaddr(ch->buffer);

 if (sc->polling != 0) {
  blksz = ch->blksz * ch->blkcnt;
  blkcnt = 1;
 } else {
  blksz = ch->blksz;
  blkcnt = ch->blkcnt;
 }

 for (i = 0; i < blkcnt; i++) {
  ch->sgd_table[i].addr = htole32(addr + (i * blksz));
  ch->sgd_table[i].status = htole16(0);
  ch->sgd_table[i].size = htole16(blksz >> 2);
  ch->sgd_table[i].next = htole32((uint32_t)ch->sgd_addr +
      (((i + 1) % blkcnt) * sizeof(struct atiixp_dma_op)));
 }
}
