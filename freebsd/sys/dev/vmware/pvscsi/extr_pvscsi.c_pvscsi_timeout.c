
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int target_id; struct pvscsi_softc* ccb_pvscsi_sc; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct pvscsi_softc {int dev; int lock; } ;
struct pvscsi_hcb {int recovery; int callout; union ccb* ccb; } ;


 int MA_OWNED ;
 int PVSCSI_ABORT_TIMEOUT ;




 int PVSCSI_RESET_TIMEOUT ;
 int SBT_1S ;
 int callout_reset_sbt (int *,int,int ,void (*) (void*),struct pvscsi_hcb*,int ) ;
 int device_printf (int ,char*,struct pvscsi_hcb*,union ccb*) ;
 int mtx_assert (int *,int ) ;
 int pvscsi_abort (struct pvscsi_softc*,int ,union ccb*) ;
 int pvscsi_adapter_reset (struct pvscsi_softc*) ;
 int pvscsi_bus_reset (struct pvscsi_softc*) ;
 int pvscsi_device_reset (struct pvscsi_softc*,int ) ;
 int pvscsi_freeze (struct pvscsi_softc*) ;

__attribute__((used)) static void
pvscsi_timeout(void *arg)
{
 struct pvscsi_hcb *hcb;
 struct pvscsi_softc *sc;
 union ccb *ccb;

 hcb = arg;
 ccb = hcb->ccb;

 if (ccb == ((void*)0)) {

  return;
 }

 sc = ccb->ccb_h.ccb_pvscsi_sc;
 mtx_assert(&sc->lock, MA_OWNED);

 device_printf(sc->dev, "Command timed out hcb=%p ccb=%p.\n", hcb, ccb);

 switch (hcb->recovery) {
 case 128:
  hcb->recovery = 131;
  pvscsi_abort(sc, ccb->ccb_h.target_id, ccb);
  callout_reset_sbt(&hcb->callout, PVSCSI_ABORT_TIMEOUT * SBT_1S,
      0, pvscsi_timeout, hcb, 0);
  break;
 case 131:
  hcb->recovery = 129;
  pvscsi_freeze(sc);
  pvscsi_device_reset(sc, ccb->ccb_h.target_id);
  callout_reset_sbt(&hcb->callout, PVSCSI_RESET_TIMEOUT * SBT_1S,
      0, pvscsi_timeout, hcb, 0);
  break;
 case 129:
  hcb->recovery = 130;
  pvscsi_freeze(sc);
  pvscsi_bus_reset(sc);
  callout_reset_sbt(&hcb->callout, PVSCSI_RESET_TIMEOUT * SBT_1S,
      0, pvscsi_timeout, hcb, 0);
  break;
 case 130:
  pvscsi_freeze(sc);
  pvscsi_adapter_reset(sc);
  break;
 };
}
