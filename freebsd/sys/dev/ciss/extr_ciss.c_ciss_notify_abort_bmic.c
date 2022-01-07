
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int ciss_flags; } ;
struct ciss_request {int dummy; } ;



 int CISS_COMMAND_ABORT_NOTIFY ;
 int CISS_FLAG_NOTIFY_OK ;
 int EIO ;
 int ciss_get_bmic_request (struct ciss_softc*,struct ciss_request**,int ,int *,int ) ;
 int ciss_name_command_status (int) ;
 int ciss_printf (struct ciss_softc*,char*,int) ;
 int ciss_release_request (struct ciss_request*) ;
 int ciss_report_request (struct ciss_request*,int*,int *) ;
 int ciss_synch_request (struct ciss_request*,int) ;
 int debug_called (int) ;

__attribute__((used)) static int
ciss_notify_abort_bmic(struct ciss_softc *sc)
{
    struct ciss_request *cr;
    int error, command_status;

    debug_called(1);

    cr = ((void*)0);
    error = 0;


    if (!(sc->ciss_flags & CISS_FLAG_NOTIFY_OK))
 goto out;






    if ((error = ciss_get_bmic_request(sc, &cr, CISS_COMMAND_ABORT_NOTIFY,
           ((void*)0), 0)) != 0)
 goto out;




    if ((error = ciss_synch_request(cr, 60 * 1000)) != 0) {
 ciss_printf(sc, "error sending BMIC Cancel Notify on Event command (%d)\n", error);
 goto out;
    }




    ciss_report_request(cr, &command_status, ((void*)0));
    switch(command_status) {
    case 128:
 break;
    default:
 ciss_printf(sc, "error cancelling Notify on Event (%s)\n",
      ciss_name_command_status(command_status));
 error = EIO;
 goto out;
    }

out:
    if (cr != ((void*)0))
 ciss_release_request(cr);
    return(error);
}
