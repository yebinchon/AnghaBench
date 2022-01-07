
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ncr53c9x_tinfo {int dummy; } ;
struct ncr53c9x_softc {scalar_t__ sc_rev; int sc_selid; int sc_id; int sc_dleft; int sc_dp; struct ncr53c9x_ecb* sc_nexus; int sc_state; int sc_dev; struct ncr53c9x_tinfo* sc_tinfo; } ;
struct ncr53c9x_linfo {struct ncr53c9x_ecb** queued; struct ncr53c9x_ecb* untagged; scalar_t__ busy; } ;
struct ncr53c9x_ecb {int flags; int dleft; int daddr; } ;


 int ECB_ABORT ;
 int ECB_RESET ;
 int MA_OWNED ;
 int MSG_SIMPLE_Q_TAG ;
 int NCR_CONNECTED ;
 int NCR_IDENTIFIED ;
 int NCR_LOCK_ASSERT (struct ncr53c9x_softc*,int ) ;
 scalar_t__ NCR_VARIANT_FAS366 ;
 int SEND_ABORT ;
 int SEND_DEV_RESET ;
 struct ncr53c9x_linfo* TINFO_LUN (struct ncr53c9x_tinfo*,int) ;
 int device_printf (int ,char*,int,...) ;
 int ffs (int) ;
 int ncr53c9x_sched_msgout (int ) ;
 int ncr53c9x_setsync (struct ncr53c9x_softc*,struct ncr53c9x_tinfo*) ;

__attribute__((used)) static int
ncr53c9x_reselect(struct ncr53c9x_softc *sc, int message, int tagtype,
    int tagid)
{
 struct ncr53c9x_ecb *ecb = ((void*)0);
 struct ncr53c9x_linfo *li;
 struct ncr53c9x_tinfo *ti;
 uint8_t lun, selid, target;

 NCR_LOCK_ASSERT(sc, MA_OWNED);

 if (sc->sc_rev == NCR_VARIANT_FAS366)
  target = sc->sc_selid;
 else {






  selid = sc->sc_selid & ~(1 << sc->sc_id);
  if (selid & (selid - 1)) {
   device_printf(sc->sc_dev, "reselect with invalid "
       "selid %02x; sending DEVICE RESET\n", selid);
   goto reset;
  }

  target = ffs(selid) - 1;
 }
 lun = message & 0x07;







 ti = &sc->sc_tinfo[target];
 li = TINFO_LUN(ti, lun);







 if (li != ((void*)0)) {
  if (li->untagged != ((void*)0) && li->busy)
   ecb = li->untagged;
  else if (tagtype != MSG_SIMPLE_Q_TAG) {

   sc->sc_state = NCR_IDENTIFIED;
   return (0);
  } else if (tagtype)
   ecb = li->queued[tagid];
 }
 if (ecb == ((void*)0)) {
  device_printf(sc->sc_dev, "reselect from target %d lun %d "
      "tag %x:%x with no nexus; sending ABORT\n",
      target, lun, tagtype, tagid);
  goto abort;
 }


 sc->sc_state = NCR_CONNECTED;
 sc->sc_nexus = ecb;
 ncr53c9x_setsync(sc, ti);

 if (ecb->flags & ECB_RESET)
  ncr53c9x_sched_msgout(SEND_DEV_RESET);
 else if (ecb->flags & ECB_ABORT)
  ncr53c9x_sched_msgout(SEND_ABORT);


 sc->sc_dp = ecb->daddr;
 sc->sc_dleft = ecb->dleft;

 return (0);

reset:
 ncr53c9x_sched_msgout(SEND_DEV_RESET);
 return (1);

abort:
 ncr53c9x_sched_msgout(SEND_ABORT);
 return (1);
}
