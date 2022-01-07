
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int ciss_flags; int * ciss_notify; int * ciss_periodic_notify; } ;
struct ciss_request {struct ciss_softc* cr_sc; scalar_t__ cr_data; struct ciss_command* cr_cc; } ;
struct ciss_notify {scalar_t__* message; scalar_t__ class; scalar_t__ subclass; int detail; } ;
struct ciss_command {int dummy; } ;


 int CISS_CMD_STATUS_SUCCESS ;
 int CISS_CMD_STATUS_TARGET_STATUS ;
 int CISS_CMD_STATUS_TIMEOUT ;
 int CISS_FLAG_ABORTING ;
 int CISS_FLAG_NOTIFY_OK ;
 scalar_t__ CISS_NOTIFY_NOTIFIER ;
 scalar_t__ CISS_NOTIFY_NOTIFIER_STATUS ;
 int ciss_enqueue_notify (struct ciss_request*) ;
 scalar_t__* ciss_name_command_status (int) ;
 int ciss_notify_event (struct ciss_softc*) ;
 int ciss_printf (struct ciss_softc*,char*,scalar_t__*) ;
 int ciss_release_request (struct ciss_request*) ;
 int ciss_report_request (struct ciss_request*,int*,int*) ;
 int debug (int ,char*,...) ;
 int debug_called (int) ;
 int wakeup (int **) ;

__attribute__((used)) static void
ciss_notify_complete(struct ciss_request *cr)
{
    struct ciss_command *cc;
    struct ciss_notify *cn;
    struct ciss_softc *sc;
    int scsi_status;
    int command_status;
    debug_called(1);

    cc = cr->cr_cc;
    cn = (struct ciss_notify *)cr->cr_data;
    sc = cr->cr_sc;




    ciss_report_request(cr, &command_status, &scsi_status);






    if ((command_status != CISS_CMD_STATUS_SUCCESS) &&
 (command_status != CISS_CMD_STATUS_TARGET_STATUS) &&
 (command_status != CISS_CMD_STATUS_TIMEOUT)) {
 ciss_printf(sc, "fatal error in Notify Event request (%s)\n",
      ciss_name_command_status(command_status));
 ciss_release_request(cr);
 sc->ciss_flags &= ~CISS_FLAG_NOTIFY_OK;
 return;
    }




    if (cn->message[0] != 0)
 ciss_printf(sc, "*** %.80s\n", cn->message);

    debug(0, "notify event class %d subclass %d detail %d",
  cn->class, cn->subclass, cn->detail);





    if ((cn->class == CISS_NOTIFY_NOTIFIER) &&
 (cn->subclass == CISS_NOTIFY_NOTIFIER_STATUS) &&
 (cn->detail == 1)) {
 debug(0, "notifier exiting");
 sc->ciss_flags &= ~CISS_FLAG_NOTIFY_OK;
 ciss_release_request(cr);
 sc->ciss_periodic_notify = ((void*)0);
 wakeup(&sc->ciss_periodic_notify);
    } else {

 ciss_enqueue_notify(cr);
 sc->ciss_periodic_notify = ((void*)0);
 wakeup(&sc->ciss_periodic_notify);
 wakeup(&sc->ciss_notify);
    }



    if (!(sc->ciss_flags & CISS_FLAG_ABORTING)) {
 ciss_notify_event(sc);
    }
}
