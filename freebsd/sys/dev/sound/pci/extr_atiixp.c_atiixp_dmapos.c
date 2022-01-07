
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile uint32_t ;
struct atiixp_info {int dev; } ;
struct atiixp_chinfo {int dt_cur_bit; int blkcnt; int blksz; int volatile ptr; int volatile prevptr; scalar_t__ dir; int buffer; struct atiixp_info* parent; } ;


 int ATI_IXP_DMA_RETRY_MAX ;
 scalar_t__ PCMDIR_PLAY ;
 int atiixp_rd (struct atiixp_info*,int volatile) ;
 int device_printf (int ,char*,char*,int volatile,...) ;
 int sndbuf_getbufaddr (int ) ;

__attribute__((used)) static __inline uint32_t
atiixp_dmapos(struct atiixp_chinfo *ch)
{
 struct atiixp_info *sc = ch->parent;
 uint32_t reg, addr, sz, retry;
 volatile uint32_t ptr;

 reg = ch->dt_cur_bit;
 addr = sndbuf_getbufaddr(ch->buffer);
 sz = ch->blkcnt * ch->blksz;
 retry = ATI_IXP_DMA_RETRY_MAX;

 do {
  ptr = atiixp_rd(sc, reg);
  if (ptr < addr)
   continue;
  ptr -= addr;
  if (ptr < sz) {
   return (ptr);
  }
 } while (--retry);

 device_printf(sc->dev, "PCMDIR_%s: invalid DMA pointer ptr=%u\n",
     (ch->dir == PCMDIR_PLAY) ? "PLAY" : "REC", ptr);

 return (0);
}
