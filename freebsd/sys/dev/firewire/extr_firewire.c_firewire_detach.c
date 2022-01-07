
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_device {int dummy; } ;
struct firewire_softc {struct firewire_comm* fc; } ;
struct firewire_comm {int wait_lock; int tlabel_lock; struct fw_device* crom_src_buf; struct fw_device* speed_map; struct fw_device* topology_map; int devices; int busprobe_callout; int bmr_callout; int timeout_callout; TYPE_1__* arq; int probe_thread; int status; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ maxq; } ;


 int FWBUSDETACH ;
 int M_FW ;
 int PWAIT ;
 struct fw_device* STAILQ_FIRST (int *) ;
 struct fw_device* STAILQ_NEXT (struct fw_device*,int ) ;
 int bus_generic_detach (int ) ;
 int callout_stop (int *) ;
 struct firewire_softc* device_get_softc (int ) ;
 int free (struct fw_device*,int ) ;
 int fw_drain_txq (struct firewire_comm*) ;
 int fwdev_destroydev (struct firewire_softc*) ;
 int hz ;
 int link ;
 scalar_t__ msleep (int ,int *,int ,char*,int) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*) ;
 int wakeup (struct firewire_comm*) ;

__attribute__((used)) static int
firewire_detach(device_t dev)
{
 struct firewire_softc *sc;
 struct firewire_comm *fc;
 struct fw_device *fwdev, *fwdev_next;
 int err;

 sc = device_get_softc(dev);
 fc = sc->fc;
 mtx_lock(&fc->wait_lock);
 fc->status = FWBUSDETACH;
 wakeup(fc);
 if (msleep(fc->probe_thread, &fc->wait_lock, PWAIT, "fwthr", hz * 60))
  printf("firewire probe thread didn't die\n");
 mtx_unlock(&fc->wait_lock);

 if (fc->arq != 0 && fc->arq->maxq > 0)
  fw_drain_txq(fc);

 if ((err = fwdev_destroydev(sc)) != 0)
  return err;

 if ((err = bus_generic_detach(dev)) != 0)
  return err;

 callout_stop(&fc->timeout_callout);
 callout_stop(&fc->bmr_callout);
 callout_stop(&fc->busprobe_callout);


 for (fwdev = STAILQ_FIRST(&fc->devices); fwdev != ((void*)0);
      fwdev = fwdev_next) {
  fwdev_next = STAILQ_NEXT(fwdev, link);
  free(fwdev, M_FW);
 }
 free(fc->topology_map, M_FW);
 free(fc->speed_map, M_FW);
 free(fc->crom_src_buf, M_FW);

 mtx_destroy(&fc->tlabel_lock);
 mtx_destroy(&fc->wait_lock);
 return (0);
}
