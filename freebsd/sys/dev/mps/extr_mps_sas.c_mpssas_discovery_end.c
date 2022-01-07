
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpssas_softc {int flags; int discovery_callout; struct mps_softc* sc; } ;
struct mps_softc {int device_check_callout; scalar_t__ track_mapping_events; } ;


 int MPSSAS_DISCOVERY_TIMEOUT_PENDING ;
 int MPS_FUNCTRACE (struct mps_softc*) ;
 int MPS_MAPPING ;
 int MPS_MISSING_CHECK_DELAY ;
 int MPS_XINFO ;
 int callout_reset (int *,int,int ,struct mps_softc*) ;
 int callout_stop (int *) ;
 int hz ;
 int mps_dprint (struct mps_softc*,int,char*) ;
 int mps_mapping_check_devices ;

void
mpssas_discovery_end(struct mpssas_softc *sassc)
{
 struct mps_softc *sc = sassc->sc;

 MPS_FUNCTRACE(sc);

 if (sassc->flags & MPSSAS_DISCOVERY_TIMEOUT_PENDING)
  callout_stop(&sassc->discovery_callout);
 if (sc->track_mapping_events) {
  mps_dprint(sc, MPS_XINFO | MPS_MAPPING, "Discovery has "
      "completed. Check for missing devices in the mapping "
      "table.\n");
  callout_reset(&sc->device_check_callout,
      MPS_MISSING_CHECK_DELAY * hz, mps_mapping_check_devices,
      sc);
 }
}
