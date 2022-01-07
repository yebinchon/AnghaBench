
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ active; } ;
struct TYPE_4__ {scalar_t__ active; } ;
struct sc_info {TYPE_1__ rch; TYPE_2__ pch; } ;
typedef int device_t ;


 int ENXIO ;
 int NM_AUDIO_MUTE_REG ;
 int NM_PLAYBACK_ENABLE_FLAG ;
 int NM_PLAYBACK_ENABLE_REG ;
 int NM_PLAYBACK_FREERUN ;
 int NM_RECORD_ENABLE_FLAG ;
 int NM_RECORD_ENABLE_REG ;
 int NM_RECORD_FREERUN ;
 int device_printf (int ,char*) ;
 int mixer_reinit (int ) ;
 int nm_wr (struct sc_info*,int,int,int) ;
 struct sc_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
nm_pci_resume(device_t dev)
{
 struct sc_info *sc;

 sc = pcm_getdevinfo(dev);
 nm_wr(sc, 0, 0x11, 1);
 nm_wr(sc, 0x214, 0, 2);


     if (mixer_reinit(dev) == -1) {
  device_printf(dev, "unable to reinitialize the mixer\n");
  return ENXIO;
 }

 if (sc->pch.active) {
  nm_wr(sc, NM_PLAYBACK_ENABLE_REG, NM_PLAYBACK_FREERUN |
     NM_PLAYBACK_ENABLE_FLAG, 1);
  nm_wr(sc, NM_AUDIO_MUTE_REG, 0, 2);
 }

 if (sc->rch.active) {
  nm_wr(sc, NM_RECORD_ENABLE_REG, NM_RECORD_FREERUN |
     NM_RECORD_ENABLE_FLAG, 1);
 }
 return 0;
}
