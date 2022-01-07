
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sc_info {TYPE_1__* ch; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ run; scalar_t__ run_save; } ;


 int ICH_LOCK (struct sc_info*) ;
 int ICH_UNLOCK (struct sc_info*) ;
 int PCMTRIG_ABORT ;
 int ichchan_trigger (int ,TYPE_1__*,int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
ich_pci_suspend(device_t dev)
{
 struct sc_info *sc;
 int i;

 sc = pcm_getdevinfo(dev);
 ICH_LOCK(sc);
 for (i = 0 ; i < 3; i++) {
  sc->ch[i].run_save = sc->ch[i].run;
  if (sc->ch[i].run) {
   ICH_UNLOCK(sc);
   ichchan_trigger(0, &sc->ch[i], PCMTRIG_ABORT);
   ICH_LOCK(sc);
  }
 }
 ICH_UNLOCK(sc);
 return (0);
}
