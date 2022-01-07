
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ciss_softc {int ciss_max_logical_bus; TYPE_3__* ciss_controllers; } ;
struct ciss_request {struct ciss_command* cr_cc; } ;
struct TYPE_4__ {scalar_t__ bus; } ;
struct TYPE_6__ {TYPE_1__ physical; } ;
struct TYPE_5__ {TYPE_3__ address; } ;
struct ciss_command {TYPE_2__ header; } ;


 int CISS_BMIC_SOFT_RESET ;
 int ciss_get_bmic_request (struct ciss_softc*,struct ciss_request**,int ,int *,int ) ;
 int ciss_get_request (struct ciss_softc*,struct ciss_request**) ;
 int ciss_printf (struct ciss_softc*,char*,int) ;
 int ciss_release_request (struct ciss_request*) ;
 int ciss_synch_request (struct ciss_request*,int) ;

__attribute__((used)) static void
ciss_soft_reset(struct ciss_softc *sc)
{
    struct ciss_request *cr = ((void*)0);
    struct ciss_command *cc;
    int i, error = 0;

    for (i = 0; i < sc->ciss_max_logical_bus; i++) {

 if (sc->ciss_controllers[i].physical.bus == 0)
     continue;

 if ((error = ciss_get_request(sc, &cr)) != 0)
     break;

 if ((error = ciss_get_bmic_request(sc, &cr, CISS_BMIC_SOFT_RESET,
        ((void*)0), 0)) != 0)
     break;

 cc = cr->cr_cc;
 cc->header.address = sc->ciss_controllers[i];

 if ((error = ciss_synch_request(cr, 60 * 1000)) != 0)
     break;

 ciss_release_request(cr);
    }

    if (error)
 ciss_printf(sc, "error resetting controller (%d)\n", error);

    if (cr != ((void*)0))
 ciss_release_request(cr);
}
