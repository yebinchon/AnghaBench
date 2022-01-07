
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_rchinfo {int run; scalar_t__ num; struct sc_info* parent; } ;
struct sc_info {int lock; } ;
typedef int kobj_t ;


 scalar_t__ DS1_RECPRIMARY ;
 int PCMTRIG_COMMON (int) ;
 int PCMTRIG_START ;
 int YDSXGR_MAPOFREC ;
 int YDSXGR_MODE ;
 int ds_rd (struct sc_info*,int ,int) ;
 int ds_setuprch (struct sc_rchinfo*) ;
 int ds_wr (struct sc_info*,int ,int,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
ds1rchan_trigger(kobj_t obj, void *data, int go)
{
 struct sc_rchinfo *ch = data;
 struct sc_info *sc = ch->parent;
 u_int32_t x;

 if (!PCMTRIG_COMMON(go))
  return 0;
 if (go == PCMTRIG_START) {
  ch->run = 1;
  ds_setuprch(ch);
  snd_mtxlock(sc->lock);
  x = ds_rd(sc, YDSXGR_MAPOFREC, 4);
  x |= (ch->num == DS1_RECPRIMARY)? 0x02 : 0x01;
  ds_wr(sc, YDSXGR_MAPOFREC, x, 4);
  ds_wr(sc, YDSXGR_MODE, 0x00000003, 4);
  snd_mtxunlock(sc->lock);
 } else {
  ch->run = 0;
  snd_mtxlock(sc->lock);
  x = ds_rd(sc, YDSXGR_MAPOFREC, 4);
  x &= ~((ch->num == DS1_RECPRIMARY)? 0x02 : 0x01);
  ds_wr(sc, YDSXGR_MAPOFREC, x, 4);
  snd_mtxunlock(sc->lock);
 }

 return 0;
}
