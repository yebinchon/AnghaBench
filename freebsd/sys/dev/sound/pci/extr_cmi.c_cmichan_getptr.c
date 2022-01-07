
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int lock; } ;
struct sc_chinfo {scalar_t__ dir; int phys_buf; int bps; int buffer; struct sc_info* parent; } ;
typedef int kobj_t ;


 int CMPCI_REG_DMA0_BASE ;
 int CMPCI_REG_DMA1_BASE ;
 scalar_t__ PCMDIR_PLAY ;
 int cmi_rd (struct sc_info*,int ,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int sndbuf_getsize (int ) ;

__attribute__((used)) static u_int32_t
cmichan_getptr(kobj_t obj, void *data)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;
 u_int32_t physptr, bufptr, sz;

 snd_mtxlock(sc->lock);
 if (ch->dir == PCMDIR_PLAY) {
  physptr = cmi_rd(sc, CMPCI_REG_DMA0_BASE, 4);
 } else {
  physptr = cmi_rd(sc, CMPCI_REG_DMA1_BASE, 4);
 }
 snd_mtxunlock(sc->lock);

 sz = sndbuf_getsize(ch->buffer);
 bufptr = (physptr - ch->phys_buf + sz - ch->bps) % sz;

 return bufptr;
}
