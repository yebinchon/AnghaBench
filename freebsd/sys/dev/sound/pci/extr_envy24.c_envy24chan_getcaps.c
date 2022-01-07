
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {scalar_t__* run; int lock; struct pcmchan_caps* caps; int dev; } ;
struct sc_chinfo {scalar_t__ dir; struct sc_info* parent; } ;
struct pcmchan_caps {int dummy; } ;
typedef int kobj_t ;


 scalar_t__ PCMDIR_PLAY ;
 int device_printf (int ,char*) ;
 struct pcmchan_caps envy24_playcaps ;
 struct pcmchan_caps envy24_reccaps ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static struct pcmchan_caps *
envy24chan_getcaps(kobj_t obj, void *data)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;
 struct pcmchan_caps *rtn;




 snd_mtxlock(sc->lock);
 if (ch->dir == PCMDIR_PLAY) {
  if (sc->run[0] == 0)
   rtn = &envy24_playcaps;
  else
   rtn = &sc->caps[0];
 }
 else {
  if (sc->run[1] == 0)
   rtn = &envy24_reccaps;
  else
   rtn = &sc->caps[1];
 }
 snd_mtxunlock(sc->lock);

 return rtn;
}
