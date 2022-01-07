
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int hasvra; int hasvrm; struct sc_chinfo* ch; int codec; } ;
struct sc_chinfo {int spd; int blksz; scalar_t__ run_save; } ;
typedef int device_t ;


 int ENXIO ;
 int ICH_LOCK (struct sc_info*) ;
 int ICH_UNLOCK (struct sc_info*) ;
 int PCMTRIG_START ;
 int ac97_setextmode (int ,int) ;
 int device_printf (int ,char*) ;
 int ich_init (struct sc_info*) ;
 int ich_pci_codec_reset (struct sc_info*) ;
 int ichchan_setblocksize (int ,struct sc_chinfo*,int ) ;
 int ichchan_setspeed (int ,struct sc_chinfo*,int ) ;
 int ichchan_trigger (int ,struct sc_chinfo*,int ) ;
 int mixer_reinit (int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
ich_pci_resume(device_t dev)
{
 struct sc_info *sc;
 int i;

 sc = pcm_getdevinfo(dev);

 ICH_LOCK(sc);

     if (ich_init(sc) == -1) {
  device_printf(dev, "unable to reinitialize the card\n");
  ICH_UNLOCK(sc);
  return (ENXIO);
 }

 ich_pci_codec_reset(sc);
 ICH_UNLOCK(sc);
 ac97_setextmode(sc->codec, sc->hasvra | sc->hasvrm);
     if (mixer_reinit(dev) == -1) {
  device_printf(dev, "unable to reinitialize the mixer\n");
  return (ENXIO);
 }

 for (i = 0 ; i < 3; i++) {
  struct sc_chinfo *ch = &sc->ch[i];
  if (sc->ch[i].run_save) {
   ichchan_setblocksize(0, ch, ch->blksz);
   ichchan_setspeed(0, ch, ch->spd);
   ichchan_trigger(0, ch, PCMTRIG_START);
  }
 }
 return (0);
}
