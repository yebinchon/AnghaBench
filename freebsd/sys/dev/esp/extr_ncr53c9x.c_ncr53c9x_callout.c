
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t target_id; int path; int status; } ;
union ccb {TYPE_3__ ccb_h; } ;
struct TYPE_5__ {scalar_t__ offset; } ;
struct TYPE_4__ {scalar_t__ offset; } ;
struct ncr53c9x_tinfo {TYPE_2__ goal; TYPE_1__ curr; } ;
struct ncr53c9x_softc {int sc_phase; struct ncr53c9x_ecb* sc_nexus; int sc_msgout; int sc_msgpriq; scalar_t__ sc_dleft; int sc_prevphase; int sc_state; int sc_dev; struct ncr53c9x_tinfo* sc_tinfo; } ;
struct ncr53c9x_ecb {int flags; char* trace; int stat; int dleft; struct ncr53c9x_softc* sc; union ccb* ccb; } ;


 int CAM_CMD_TIMEOUT ;
 int CDI ;
 int ECB_ABORT ;
 int MA_OWNED ;
 int MSGI ;
 scalar_t__ NCRDMA_ISACTIVE (struct ncr53c9x_softc*) ;
 int NCR_LOCK_ASSERT (struct ncr53c9x_softc*,int ) ;
 int NCR_READ_REG (struct ncr53c9x_softc*,int ) ;
 int NCR_STAT ;
 int device_printf (int ,char*,struct ncr53c9x_ecb*,int,int ,int ,int ,struct ncr53c9x_ecb*,int ,int,int ,long,int ,int ,char*) ;
 int ncr53c9x_abort (struct ncr53c9x_softc*,struct ncr53c9x_ecb*) ;
 int ncr53c9x_init (struct ncr53c9x_softc*,int) ;
 int printf (char*,...) ;
 int xpt_print_path (int ) ;

__attribute__((used)) static void
ncr53c9x_callout(void *arg)
{
 struct ncr53c9x_ecb *ecb = arg;
 union ccb *ccb = ecb->ccb;
 struct ncr53c9x_softc *sc = ecb->sc;
 struct ncr53c9x_tinfo *ti;

 NCR_LOCK_ASSERT(sc, MA_OWNED);

 ti = &sc->sc_tinfo[ccb->ccb_h.target_id];
 xpt_print_path(ccb->ccb_h.path);
 device_printf(sc->sc_dev, "timed out [ecb %p (flags 0x%x, dleft %x, "
     "stat %x)], <state %d, nexus %p, phase(l %x, c %x, p %x), "
     "resid %lx, msg(q %x,o %x) %s>",
     ecb, ecb->flags, ecb->dleft, ecb->stat,
     sc->sc_state, sc->sc_nexus,
     NCR_READ_REG(sc, NCR_STAT),
     sc->sc_phase, sc->sc_prevphase,
     (long)sc->sc_dleft, sc->sc_msgpriq, sc->sc_msgout,
     NCRDMA_ISACTIVE(sc) ? "DMA active" : "");




 if (ecb->flags & ECB_ABORT) {

  printf(" AGAIN\n");
  ncr53c9x_init(sc, 1);
 } else {

  printf("\n");
  ccb->ccb_h.status = CAM_CMD_TIMEOUT;
  ncr53c9x_abort(sc, ecb);


  if (ecb == sc->sc_nexus && ti->curr.offset != 0 &&
      (sc->sc_phase & (MSGI | CDI)) == 0) {

   ti->goal.offset = 0;
   xpt_print_path(ccb->ccb_h.path);
   printf("sync negotiation disabled\n");
  }
 }
}
