
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dma_was_active; } ;
struct TYPE_3__ {scalar_t__ dma_was_active; } ;
struct sc_info {TYPE_2__ pch; TYPE_1__ rch; } ;
typedef int device_t ;


 int ENXIO ;
 int PCMTRIG_START ;
 int device_printf (int ,char*) ;
 int mixer_reinit (int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;
 int sv_init (struct sc_info*) ;
 int sv_mix_mute_all (struct sc_info*) ;
 int sv_power (struct sc_info*,int ) ;
 int svpchan_trigger (int ,TYPE_2__*,int ) ;
 int svrchan_trigger (int ,TYPE_1__*,int ) ;

__attribute__((used)) static int
sv_resume(device_t dev)
{
 struct sc_info *sc = pcm_getdevinfo(dev);

 sv_mix_mute_all(sc);
 sv_power(sc, 0);
 if (sv_init(sc) == -1) {
  device_printf(dev, "unable to reinitialize the card\n");
  return ENXIO;
 }

 if (mixer_reinit(dev) == -1) {
  device_printf(dev, "unable to reinitialize the mixer\n");
                return ENXIO;
        }

 if (sc->rch.dma_was_active) {
  svrchan_trigger(0, &sc->rch, PCMTRIG_START);
 }

 if (sc->pch.dma_was_active) {
  svpchan_trigger(0, &sc->pch, PCMTRIG_START);
 }

 return 0;
}
