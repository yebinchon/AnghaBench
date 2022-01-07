
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* width; scalar_t__ offset; scalar_t__ period; } ;
struct TYPE_3__ {void* width; scalar_t__ offset; scalar_t__ period; } ;
struct ncr53c9x_tinfo {int flags; TYPE_2__ curr; TYPE_1__ goal; int luns; } ;
struct ncr53c9x_softc {scalar_t__ sc_state; int sc_ntarg; scalar_t__ sc_minsync; int sc_cfflags; struct ncr53c9x_tinfo* sc_tinfo; int sc_prevphase; int sc_phase; scalar_t__ sc_msgoutq; scalar_t__ sc_msgout; scalar_t__ sc_msgpriq; scalar_t__ sc_flags; int * sc_nexus; int ready_list; } ;


 int CAM_CMD_TIMEOUT ;
 int DELAY (int) ;
 int INVALID_PHASE ;
 int LIST_INIT (int *) ;
 int MA_OWNED ;
 void* MSG_EXT_WDTR_BUS_8_BIT ;
 int NCRCMD (struct ncr53c9x_softc*,int ) ;
 int NCRCMD_RSTSCSI ;
 scalar_t__ NCR_IDLE ;
 int NCR_LOCK_ASSERT (struct ncr53c9x_softc*,int ) ;
 int NCR_MISC (char*) ;
 scalar_t__ NCR_SBR ;
 int TAILQ_INIT (int *) ;
 int T_RSELECTOFF ;
 int T_SDTRSENT ;
 int T_SYNCHOFF ;
 int T_WDTRSENT ;
 int memset (struct ncr53c9x_tinfo*,int ,int) ;
 int ncr53c9x_clear (struct ncr53c9x_softc*,int ) ;
 int ncr53c9x_reset (struct ncr53c9x_softc*) ;
 int ncr53c9x_sched (struct ncr53c9x_softc*) ;

__attribute__((used)) static void
ncr53c9x_init(struct ncr53c9x_softc *sc, int doreset)
{
 struct ncr53c9x_tinfo *ti;
 int r;

 NCR_LOCK_ASSERT(sc, MA_OWNED);

 NCR_MISC(("[NCR_INIT(%d) %d] ", doreset, sc->sc_state));

 if (sc->sc_state == 0) {


  TAILQ_INIT(&sc->ready_list);
  sc->sc_nexus = ((void*)0);
  memset(sc->sc_tinfo, 0, sizeof(*sc->sc_tinfo));
  for (r = 0; r < sc->sc_ntarg; r++) {
   LIST_INIT(&sc->sc_tinfo[r].luns);
  }
 } else
  ncr53c9x_clear(sc, CAM_CMD_TIMEOUT);




 ncr53c9x_reset(sc);

 sc->sc_flags = 0;
 sc->sc_msgpriq = sc->sc_msgout = sc->sc_msgoutq = 0;
 sc->sc_phase = sc->sc_prevphase = INVALID_PHASE;







 if (sc->sc_state == 0) {
  for (r = 0; r < sc->sc_ntarg; r++) {
   ti = &sc->sc_tinfo[r];


   ti->flags = ((sc->sc_minsync != 0 &&
       (sc->sc_cfflags & (1 << ((r & 7) + 8))) == 0) ?
       0 : T_SYNCHOFF) |
       ((sc->sc_cfflags & (1 << (r & 7))) == 0 ?
       0 : T_RSELECTOFF);
   ti->curr.period = ti->goal.period = 0;
   ti->curr.offset = ti->goal.offset = 0;
   ti->curr.width = ti->goal.width =
       MSG_EXT_WDTR_BUS_8_BIT;
  }
 } else {
  for (r = 0; r < sc->sc_ntarg; r++) {
   ti = &sc->sc_tinfo[r];
   ti->flags &= ~(T_SDTRSENT | T_WDTRSENT);
   ti->curr.period = 0;
   ti->curr.offset = 0;
   ti->curr.width = MSG_EXT_WDTR_BUS_8_BIT;
  }
 }

 if (doreset) {
  sc->sc_state = NCR_SBR;
  NCRCMD(sc, NCRCMD_RSTSCSI);

  DELAY(250000);
 } else {
  sc->sc_state = NCR_IDLE;
  ncr53c9x_sched(sc);
 }
}
