
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int lock; } ;
struct sc_chinfo {scalar_t__ dir; struct sc_info* parent; } ;
typedef int kobj_t ;


 scalar_t__ PCMDIR_PLAY ;

 int PCMTRIG_COMMON (int) ;


 int cmi_ch0_start (struct sc_info*,struct sc_chinfo*) ;
 int cmi_ch0_stop (struct sc_info*,struct sc_chinfo*) ;
 int cmi_ch1_start (struct sc_info*,struct sc_chinfo*) ;
 int cmi_ch1_stop (struct sc_info*,struct sc_chinfo*) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
cmichan_trigger(kobj_t obj, void *data, int go)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;

 if (!PCMTRIG_COMMON(go))
  return 0;

 snd_mtxlock(sc->lock);
 if (ch->dir == PCMDIR_PLAY) {
  switch(go) {
  case 129:
   cmi_ch0_start(sc, ch);
   break;
  case 128:
  case 130:
   cmi_ch0_stop(sc, ch);
   break;
  }
 } else {
  switch(go) {
  case 129:
   cmi_ch1_start(sc, ch);
   break;
  case 128:
  case 130:
   cmi_ch1_stop(sc, ch);
   break;
  }
 }
 snd_mtxunlock(sc->lock);
 return 0;
}
