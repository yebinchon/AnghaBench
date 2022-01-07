
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fmt; int flags; int * channel; } ;
struct atiixp_info {scalar_t__ polling; TYPE_1__ rch; TYPE_1__ pch; } ;
typedef int device_t ;


 int ATI_IXP_CHN_SUSPEND ;
 int ENXIO ;
 int PCMTRIG_START ;
 int atiixp_chan_setformat (int *,TYPE_1__*,scalar_t__) ;
 int atiixp_chan_trigger (int *,TYPE_1__*,int ) ;
 int atiixp_enable_interrupts (struct atiixp_info*) ;
 int atiixp_lock (struct atiixp_info*) ;
 int atiixp_reset_aclink (struct atiixp_info*) ;
 int atiixp_unlock (struct atiixp_info*) ;
 int device_printf (int ,char*) ;
 int mixer_reinit (int ) ;
 struct atiixp_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
atiixp_pci_resume(device_t dev)
{
 struct atiixp_info *sc = pcm_getdevinfo(dev);

 atiixp_lock(sc);

 atiixp_reset_aclink(sc);
 atiixp_unlock(sc);

 if (mixer_reinit(dev) == -1) {
  device_printf(dev, "unable to reinitialize the mixer\n");
  return (ENXIO);
 }





 if (sc->pch.channel != ((void*)0)) {
  if (sc->pch.fmt != 0)
   atiixp_chan_setformat(((void*)0), &sc->pch, sc->pch.fmt);
  if (sc->pch.flags & ATI_IXP_CHN_SUSPEND) {
   sc->pch.flags &= ~ATI_IXP_CHN_SUSPEND;
   atiixp_chan_trigger(((void*)0), &sc->pch, PCMTRIG_START);
  }
 }
 if (sc->rch.channel != ((void*)0)) {
  if (sc->rch.fmt != 0)
   atiixp_chan_setformat(((void*)0), &sc->rch, sc->rch.fmt);
  if (sc->rch.flags & ATI_IXP_CHN_SUSPEND) {
   sc->rch.flags &= ~ATI_IXP_CHN_SUSPEND;
   atiixp_chan_trigger(((void*)0), &sc->rch, PCMTRIG_START);
  }
 }


 atiixp_lock(sc);
 if (sc->polling == 0)
  atiixp_enable_interrupts(sc);
 atiixp_unlock(sc);

 return (0);
}
