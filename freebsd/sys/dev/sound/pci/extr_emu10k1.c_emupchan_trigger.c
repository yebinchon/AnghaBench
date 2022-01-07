
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sc_pchinfo {int run; TYPE_1__* master; TYPE_1__* slave; struct sc_info* parent; } ;
struct sc_info {int lock; } ;
typedef int kobj_t ;
struct TYPE_4__ {int speed; scalar_t__ stereo; scalar_t__ b16; } ;


 int PCMTRIG_COMMON (int) ;
 int PCMTRIG_START ;
 int emu_enatimer (struct sc_info*,int) ;
 int emu_settimer (struct sc_info*) ;
 int emu_vdump (struct sc_info*,TYPE_1__*) ;
 int emu_vsetup (struct sc_pchinfo*) ;
 int emu_vtrigger (struct sc_info*,TYPE_1__*,int) ;
 int emu_vwrite (struct sc_info*,TYPE_1__*) ;
 int printf (char*,int,char*,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
emupchan_trigger(kobj_t obj, void *data, int go)
{
 struct sc_pchinfo *ch = data;
 struct sc_info *sc = ch->parent;

 if (!PCMTRIG_COMMON(go))
  return 0;

 snd_mtxlock(sc->lock);
 if (go == PCMTRIG_START) {
  emu_vsetup(ch);
  emu_vwrite(sc, ch->master);
  emu_settimer(sc);
  emu_enatimer(sc, 1);
 }
 ch->run = (go == PCMTRIG_START) ? 1 : 0;
 emu_vtrigger(sc, ch->master, ch->run);
 snd_mtxunlock(sc->lock);
 return 0;
}
