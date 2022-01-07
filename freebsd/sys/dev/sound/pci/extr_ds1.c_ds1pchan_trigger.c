
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pchinfo {int run; int rsnum; int lsnum; int fmt; struct sc_info* parent; } ;
struct sc_info {int lock; } ;
typedef int kobj_t ;


 int AFMT_CHANNEL (int ) ;
 int PCMTRIG_COMMON (int) ;
 int PCMTRIG_START ;
 int YDSXGR_MODE ;
 int ds_enapslot (struct sc_info*,int ,int) ;
 int ds_setuppch (struct sc_pchinfo*) ;
 int ds_wr (struct sc_info*,int ,int,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
ds1pchan_trigger(kobj_t obj, void *data, int go)
{
 struct sc_pchinfo *ch = data;
 struct sc_info *sc = ch->parent;
 int stereo;

 if (!PCMTRIG_COMMON(go))
  return 0;
 stereo = (AFMT_CHANNEL(ch->fmt) > 1)? 1 : 0;
 if (go == PCMTRIG_START) {
  ch->run = 1;
  ds_setuppch(ch);
  ds_enapslot(sc, ch->lsnum, 1);
  ds_enapslot(sc, ch->rsnum, stereo);
  snd_mtxlock(sc->lock);
  ds_wr(sc, YDSXGR_MODE, 0x00000003, 4);
  snd_mtxunlock(sc->lock);
 } else {
  ch->run = 0;

  ds_enapslot(sc, ch->lsnum, 0);
  ds_enapslot(sc, ch->rsnum, 0);
 }

 return 0;
}
