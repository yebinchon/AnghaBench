
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pcminfo {int dev; struct sc_info* sc; } ;
struct sc_info {int lock; } ;
struct sc_chinfo {int run; struct sc_pcminfo* parent; } ;
typedef int kobj_t ;







 int buffer_copy (struct sc_chinfo*) ;
 int clean (struct sc_chinfo*) ;
 int device_printf (int ,char*) ;
 int hdspe_start_audio (struct sc_info*) ;
 int hdspe_stop_audio (struct sc_info*) ;
 int hdspechan_enable (struct sc_chinfo*,int) ;
 int hdspechan_setgain (struct sc_chinfo*) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
hdspechan_trigger(kobj_t obj, void *data, int go)
{
 struct sc_pcminfo *scp;
 struct sc_chinfo *ch;
 struct sc_info *sc;

 ch = data;
 scp = ch->parent;
 sc = scp->sc;

 snd_mtxlock(sc->lock);
 switch (go) {
 case 129:



  hdspechan_enable(ch, 1);
  hdspechan_setgain(ch);
  hdspe_start_audio(sc);
  break;

 case 128:
 case 132:



  clean(ch);
  hdspechan_enable(ch, 0);
  hdspe_stop_audio(sc);
  break;

 case 130:
 case 131:
  if(ch->run)
   buffer_copy(ch);
  break;
 }

 snd_mtxunlock(sc->lock);

 return (0);
}
