
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mpr_softc {int mpr_flags; int periodic; } ;


 int IFAULT_IOP_OVER_TEMP_THRESHOLD_EXCEEDED ;
 int MPI2_DOORBELL_FAULT_CODE_MASK ;
 int MPI2_DOORBELL_OFFSET ;
 int MPI2_IOC_STATE_FAULT ;
 int MPI2_IOC_STATE_MASK ;
 int MPR_FAULT ;
 int MPR_FLAGS_SHUTDOWN ;
 int MPR_PERIODIC_DELAY ;
 int callout_reset (int *,int,void (*) (void*),struct mpr_softc*) ;
 int hz ;
 int mpr_dprint (struct mpr_softc*,int ,char*,int) ;
 int mpr_regread (struct mpr_softc*,int ) ;
 int mpr_reinit (struct mpr_softc*) ;
 int panic (char*) ;

__attribute__((used)) static void
mpr_periodic(void *arg)
{
 struct mpr_softc *sc;
 uint32_t db;

 sc = (struct mpr_softc *)arg;
 if (sc->mpr_flags & MPR_FLAGS_SHUTDOWN)
  return;

 db = mpr_regread(sc, MPI2_DOORBELL_OFFSET);
 if ((db & MPI2_IOC_STATE_MASK) == MPI2_IOC_STATE_FAULT) {
  if ((db & MPI2_DOORBELL_FAULT_CODE_MASK) ==
      IFAULT_IOP_OVER_TEMP_THRESHOLD_EXCEEDED) {
   panic("TEMPERATURE FAULT: STOPPING.");
  }
  mpr_dprint(sc, MPR_FAULT, "IOC Fault 0x%08x, Resetting\n", db);
  mpr_reinit(sc);
 }

 callout_reset(&sc->periodic, MPR_PERIODIC_DELAY * hz, mpr_periodic, sc);
}
