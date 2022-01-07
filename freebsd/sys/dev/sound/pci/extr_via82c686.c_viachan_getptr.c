
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct via_info {int lock; } ;
struct via_dma_op {int dummy; } ;
struct via_chinfo {scalar_t__ sgd_addr; scalar_t__ dir; int buffer; int count; int base; struct via_dma_op* sgd_table; struct via_info* parent; } ;
typedef int kobj_t ;
typedef scalar_t__ bus_addr_t ;


 int DEB (int ) ;
 scalar_t__ PCMDIR_REC ;
 scalar_t__ SEGS_PER_CHAN ;
 int printf (char*,scalar_t__,...) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 scalar_t__ sndbuf_getsize (int ) ;
 scalar_t__ via_rd (struct via_info*,int ,int) ;

__attribute__((used)) static u_int32_t
viachan_getptr(kobj_t obj, void *data)
{
 struct via_chinfo *ch = data;
 struct via_info *via = ch->parent;
 struct via_dma_op *ado;
 bus_addr_t sgd_addr = ch->sgd_addr;
 u_int32_t ptr, base, base1, len, seg;

 ado = ch->sgd_table;
 snd_mtxlock(via->lock);
 base1 = via_rd(via, ch->base, 4);
 len = via_rd(via, ch->count, 4);
 base = via_rd(via, ch->base, 4);
 if (base != base1)
  len = via_rd(via, ch->count, 4);
 snd_mtxunlock(via->lock);

 DEB(printf("viachan_getptr: len / base = %x / %x\n", len, base));




 seg = (base - sgd_addr) / sizeof(struct via_dma_op);
 if (seg == 0)
  seg = SEGS_PER_CHAN;


 ptr = (seg * sndbuf_getsize(ch->buffer) / SEGS_PER_CHAN) - len;
 if (ch->dir == PCMDIR_REC) {


  ptr = ptr & ~0x1f;
 }

 DEB(printf("return ptr=%u\n", ptr));
 return ptr;
}
