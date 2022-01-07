
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_info {int lock; } ;
struct via_dma_op {int dummy; } ;
struct via_chinfo {int sgd_addr; int ctrl; int base; struct via_dma_op* sgd_table; struct via_info* parent; } ;
typedef int kobj_t ;
typedef int bus_addr_t ;


 int DEB (int ) ;
 int PCMTRIG_COMMON (int) ;
 int PCMTRIG_START ;
 int VIA_RPCTRL_START ;
 int VIA_RPCTRL_TERMINATE ;
 int printf (char*,int,...) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int via_buildsgdt (struct via_chinfo*) ;
 int via_wr (struct via_info*,int ,int,int) ;

__attribute__((used)) static int
viachan_trigger(kobj_t obj, void *data, int go)
{
 struct via_chinfo *ch = data;
 struct via_info *via = ch->parent;
 struct via_dma_op *ado;
 bus_addr_t sgd_addr = ch->sgd_addr;

 if (!PCMTRIG_COMMON(go))
  return 0;

 ado = ch->sgd_table;
 DEB(printf("ado located at va=%p pa=%x\n", ado, sgd_addr));

 snd_mtxlock(via->lock);
 if (go == PCMTRIG_START) {
  via_buildsgdt(ch);
  via_wr(via, ch->base, sgd_addr, 4);
  via_wr(via, ch->ctrl, VIA_RPCTRL_START, 1);
 } else
  via_wr(via, ch->ctrl, VIA_RPCTRL_TERMINATE, 1);
 snd_mtxunlock(via->lock);

 DEB(printf("viachan_trigger: go=%d\n", go));
 return 0;
}
