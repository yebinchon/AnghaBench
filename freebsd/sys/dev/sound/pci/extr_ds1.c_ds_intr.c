
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct sc_info {int currbank; int lock; TYPE_2__* rch; TYPE_1__* pch; int dev; } ;
struct TYPE_4__ {int channel; scalar_t__ run; } ;
struct TYPE_3__ {int channel; scalar_t__ run; } ;


 int DS1_CHANS ;
 int YDSXGR_CTRLSELECT ;
 int YDSXGR_MODE ;
 int YDSXGR_STATUS ;
 int chn_intr (int ) ;
 int device_printf (int ,char*) ;
 int ds_rd (struct sc_info*,int ,int) ;
 int ds_wr (struct sc_info*,int ,int,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static void
ds_intr(void *p)
{
 struct sc_info *sc = (struct sc_info *)p;
 u_int32_t i, x;

 snd_mtxlock(sc->lock);
 i = ds_rd(sc, YDSXGR_STATUS, 4);
 if (i & 0x00008000)
  device_printf(sc->dev, "timeout irq\n");
 if (i & 0x80008000) {
  ds_wr(sc, YDSXGR_STATUS, i & 0x80008000, 4);
  sc->currbank = ds_rd(sc, YDSXGR_CTRLSELECT, 4) & 0x00000001;

  x = 0;
  for (i = 0; i < DS1_CHANS; i++) {
   if (sc->pch[i].run) {
    x = 1;
    snd_mtxunlock(sc->lock);
    chn_intr(sc->pch[i].channel);
    snd_mtxlock(sc->lock);
   }
  }
  for (i = 0; i < 2; i++) {
   if (sc->rch[i].run) {
    x = 1;
    snd_mtxunlock(sc->lock);
    chn_intr(sc->rch[i].channel);
    snd_mtxlock(sc->lock);
   }
  }
  i = ds_rd(sc, YDSXGR_MODE, 4);
  if (x)
   ds_wr(sc, YDSXGR_MODE, i | 0x00000002, 4);

 }
 snd_mtxunlock(sc->lock);
}
