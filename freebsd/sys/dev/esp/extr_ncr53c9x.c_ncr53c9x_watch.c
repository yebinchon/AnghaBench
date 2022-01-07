
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct ncr53c9x_tinfo {int luns; int ** lun; } ;
struct ncr53c9x_softc {int sc_ntarg; int sc_watchdog; struct ncr53c9x_tinfo* sc_tinfo; } ;
struct ncr53c9x_linfo {scalar_t__ last_used; scalar_t__ used; size_t lun; int * untagged; } ;


 struct ncr53c9x_linfo* LIST_FIRST (int *) ;
 struct ncr53c9x_linfo* LIST_NEXT (struct ncr53c9x_linfo*,int ) ;
 int LIST_REMOVE (struct ncr53c9x_linfo*,int ) ;
 int MA_OWNED ;
 int M_DEVBUF ;
 int NCR_LOCK_ASSERT (struct ncr53c9x_softc*,int ) ;
 size_t NCR_NLUN ;
 int callout_reset (int *,int,void (*) (void*),struct ncr53c9x_softc*) ;
 int free (struct ncr53c9x_linfo*,int ) ;
 int hz ;
 int link ;
 scalar_t__ time_second ;

__attribute__((used)) static void
ncr53c9x_watch(void *arg)
{
 struct ncr53c9x_softc *sc = arg;
 struct ncr53c9x_linfo *li;
 struct ncr53c9x_tinfo *ti;
 time_t old;
 int t;

 NCR_LOCK_ASSERT(sc, MA_OWNED);


 old = time_second - (10 * 60);

 for (t = 0; t < sc->sc_ntarg; t++) {
  ti = &sc->sc_tinfo[t];
  li = LIST_FIRST(&ti->luns);
  while (li) {
   if (li->last_used < old &&
       li->untagged == ((void*)0) &&
       li->used == 0) {
    if (li->lun < NCR_NLUN)
     ti->lun[li->lun] = ((void*)0);
    LIST_REMOVE(li, link);
    free(li, M_DEVBUF);

    li = LIST_FIRST(&ti->luns);
    continue;
   }
   li = LIST_NEXT(li, link);
  }
 }
 callout_reset(&sc->sc_watchdog, 60 * hz, ncr53c9x_watch, sc);
}
