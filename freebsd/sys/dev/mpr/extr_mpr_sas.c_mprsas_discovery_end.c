
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mprsas_softc {int flags; int discovery_callout; struct mpr_softc* sc; } ;
struct mpr_softc {int device_check_callout; scalar_t__ track_mapping_events; } ;


 int MPRSAS_DISCOVERY_TIMEOUT_PENDING ;
 int MPR_FUNCTRACE (struct mpr_softc*) ;
 int MPR_MAPPING ;
 int MPR_MISSING_CHECK_DELAY ;
 int MPR_XINFO ;
 int callout_reset (int *,int,int ,struct mpr_softc*) ;
 int callout_stop (int *) ;
 int hz ;
 int mpr_dprint (struct mpr_softc*,int,char*) ;
 int mpr_mapping_check_devices ;

void
mprsas_discovery_end(struct mprsas_softc *sassc)
{
 struct mpr_softc *sc = sassc->sc;

 MPR_FUNCTRACE(sc);

 if (sassc->flags & MPRSAS_DISCOVERY_TIMEOUT_PENDING)
  callout_stop(&sassc->discovery_callout);
 if (sc->track_mapping_events) {
  mpr_dprint(sc, MPR_XINFO | MPR_MAPPING, "Discovery has "
      "completed. Check for missing devices in the mapping "
      "table.\n");
  callout_reset(&sc->device_check_callout,
      MPR_MISSING_CHECK_DELAY * hz, mpr_mapping_check_devices,
      sc);
 }
}
