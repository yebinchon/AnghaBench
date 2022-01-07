
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ active; } ;
struct TYPE_3__ {scalar_t__ active; } ;
struct sc_info {TYPE_2__ rch; TYPE_1__ pch; } ;
typedef int device_t ;


 int NM_AUDIO_MUTE_BOTH ;
 int NM_AUDIO_MUTE_REG ;
 int NM_PLAYBACK_ENABLE_REG ;
 int NM_RECORD_ENABLE_REG ;
 int nm_wr (struct sc_info*,int ,int ,int) ;
 struct sc_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
nm_pci_suspend(device_t dev)
{
 struct sc_info *sc;

 sc = pcm_getdevinfo(dev);


 if (sc->pch.active) {
  nm_wr(sc, NM_PLAYBACK_ENABLE_REG, 0, 1);
  nm_wr(sc, NM_AUDIO_MUTE_REG, NM_AUDIO_MUTE_BOTH, 2);
 }

 if (sc->rch.active) {
  nm_wr(sc, NM_RECORD_ENABLE_REG, 0, 1);
 }
 return 0;
}
