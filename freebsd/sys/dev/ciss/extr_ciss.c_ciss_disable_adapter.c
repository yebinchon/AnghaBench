
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int ciss_max_requests; struct ciss_request* ciss_request; int ciss_flags; int ciss_dev; } ;
struct ciss_request {int cr_flags; int (* cr_complete ) (struct ciss_request*) ;struct ciss_command* cr_cc; } ;
struct ciss_error_info {int command_status; } ;
struct ciss_command {int * sg; } ;
typedef int cr_qhead_t ;


 int CISS_CMD_STATUS_HARDWARE_ERROR ;
 int CISS_FLAG_RUNNING ;
 int CISS_REQ_BUSY ;
 int CISS_REQ_SLEEP ;
 int CISS_TL_SIMPLE_DISABLE_INTERRUPTS (struct ciss_softc*) ;
 struct ciss_request* ciss_dequeue_complete (struct ciss_softc*,int *) ;
 int ciss_enqueue_complete (struct ciss_request*,int *) ;
 int pci_disable_busmaster (int ) ;
 int stub1 (struct ciss_request*) ;
 int wakeup (struct ciss_request*) ;

__attribute__((used)) static void
ciss_disable_adapter(struct ciss_softc *sc)
{
    cr_qhead_t qh;
    struct ciss_request *cr;
    struct ciss_command *cc;
    struct ciss_error_info *ce;
    int i;

    CISS_TL_SIMPLE_DISABLE_INTERRUPTS(sc);
    pci_disable_busmaster(sc->ciss_dev);
    sc->ciss_flags &= ~CISS_FLAG_RUNNING;

    for (i = 1; i < sc->ciss_max_requests; i++) {
 cr = &sc->ciss_request[i];
 if ((cr->cr_flags & CISS_REQ_BUSY) == 0)
     continue;

 cc = cr->cr_cc;
 ce = (struct ciss_error_info *)&(cc->sg[0]);
 ce->command_status = CISS_CMD_STATUS_HARDWARE_ERROR;
 ciss_enqueue_complete(cr, &qh);
    }

    for (;;) {
 if ((cr = ciss_dequeue_complete(sc, &qh)) == ((void*)0))
     break;




 if (cr->cr_complete != ((void*)0)) {
     cr->cr_complete(cr);
     continue;
 }




 if (cr->cr_flags & CISS_REQ_SLEEP) {
     cr->cr_flags &= ~CISS_REQ_SLEEP;
     wakeup(cr);
     continue;
 }
    }
}
