
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ncr53c9x_softc {int sc_ntarg; struct ncr53c9x_ecb* sc_nexus; scalar_t__ sc_msgify; int sc_state; } ;
struct ncr53c9x_ecb {TYPE_1__* ccb; } ;
typedef int cam_status ;
struct TYPE_4__ {int status; } ;
struct TYPE_3__ {TYPE_2__ ccb_h; } ;


 int MA_OWNED ;
 int NCR_CLEANING ;
 int NCR_LOCK_ASSERT (struct ncr53c9x_softc*,int ) ;
 int ncr53c9x_clear_target (struct ncr53c9x_softc*,int,int ) ;
 int ncr53c9x_done (struct ncr53c9x_softc*,struct ncr53c9x_ecb*) ;

__attribute__((used)) static void
ncr53c9x_clear(struct ncr53c9x_softc *sc, cam_status result)
{
 struct ncr53c9x_ecb *ecb;
 int r;

 NCR_LOCK_ASSERT(sc, MA_OWNED);


 sc->sc_state = NCR_CLEANING;
 sc->sc_msgify = 0;
 ecb = sc->sc_nexus;
 if (ecb != ((void*)0)) {
  ecb->ccb->ccb_h.status = result;
  ncr53c9x_done(sc, ecb);
 }

 for (r = 0; r < sc->sc_ntarg; r++)
  ncr53c9x_clear_target(sc, r, result);
}
