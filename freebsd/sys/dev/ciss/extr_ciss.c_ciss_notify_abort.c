
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ciss_softc {int ciss_flags; int ciss_mtx; struct ciss_request* ciss_periodic_notify; } ;
struct ciss_request {int * cr_data; struct ciss_command* cr_cc; int cr_length; } ;
struct ciss_notify_cdb {int length; int command; int opcode; } ;
struct TYPE_8__ {int cdb_length; int * cdb; scalar_t__ timeout; int direction; int attribute; int type; } ;
struct TYPE_5__ {scalar_t__ target; scalar_t__ bus; int mode; } ;
struct TYPE_6__ {TYPE_1__ physical; } ;
struct TYPE_7__ {TYPE_2__ address; } ;
struct ciss_command {TYPE_4__ cdb; TYPE_3__ header; } ;


 int CISS_CDB_ATTRIBUTE_SIMPLE ;
 int CISS_CDB_DIRECTION_READ ;
 int CISS_CDB_TYPE_COMMAND ;



 int CISS_COMMAND_ABORT_NOTIFY ;
 int CISS_FLAG_NOTIFY_OK ;
 int CISS_HDR_ADDRESS_MODE_PERIPHERAL ;
 int CISS_MALLOC_CLASS ;
 int CISS_NOTIFY_DATA_SIZE ;
 int CISS_OPCODE_WRITE ;
 int CISS_SCSI_STATUS_CHECK_CONDITION ;
 int EIO ;
 int ENOMEM ;
 int EWOULDBLOCK ;
 int M_NOWAIT ;
 int PRIBIO ;
 int bzero (struct ciss_notify_cdb*,int) ;
 int ciss_get_request (struct ciss_softc*,struct ciss_request**) ;
 int ciss_name_command_status (int) ;
 int ciss_notify_abort_bmic (struct ciss_softc*) ;
 int ciss_print_request (struct ciss_request*) ;
 int ciss_printf (struct ciss_softc*,char*,...) ;
 int ciss_release_request (struct ciss_request*) ;
 int ciss_report_request (struct ciss_request*,int*,int*) ;
 int ciss_synch_request (struct ciss_request*,int) ;
 int debug (int ,char*) ;
 int debug_called (int) ;
 int free (int *,int ) ;
 int htonl (int ) ;
 int hz ;
 int * malloc (int ,int ,int ) ;
 int msleep (struct ciss_request**,int *,int ,char*,int) ;

__attribute__((used)) static int
ciss_notify_abort(struct ciss_softc *sc)
{
    struct ciss_request *cr;
    struct ciss_command *cc;
    struct ciss_notify_cdb *cnc;
    int error, command_status, scsi_status;

    debug_called(1);

    cr = ((void*)0);
    error = 0;


    if (!(sc->ciss_flags & CISS_FLAG_NOTIFY_OK))
 goto out;


    if ((error = ciss_get_request(sc, &cr)))
 goto out;


    if ((cr->cr_data = malloc(CISS_NOTIFY_DATA_SIZE, CISS_MALLOC_CLASS, M_NOWAIT)) == ((void*)0)) {
 debug(0, "can't get notify event request buffer");
 error = ENOMEM;
 goto out;
    }
    cr->cr_length = CISS_NOTIFY_DATA_SIZE;


    cc = cr->cr_cc;
    cc->header.address.physical.mode = CISS_HDR_ADDRESS_MODE_PERIPHERAL;
    cc->header.address.physical.bus = 0;
    cc->header.address.physical.target = 0;
    cc->cdb.cdb_length = sizeof(*cnc);
    cc->cdb.type = CISS_CDB_TYPE_COMMAND;
    cc->cdb.attribute = CISS_CDB_ATTRIBUTE_SIMPLE;
    cc->cdb.direction = CISS_CDB_DIRECTION_READ;
    cc->cdb.timeout = 0;

    cnc = (struct ciss_notify_cdb *)&(cc->cdb.cdb[0]);
    bzero(cnc, sizeof(*cnc));
    cnc->opcode = CISS_OPCODE_WRITE;
    cnc->command = CISS_COMMAND_ABORT_NOTIFY;
    cnc->length = htonl(CISS_NOTIFY_DATA_SIZE);







    if ((error = ciss_synch_request(cr, 60 * 1000)) != 0) {
 ciss_printf(sc, "Abort Notify Event command failed (%d)\n", error);
 goto out;
    }




    ciss_report_request(cr, &command_status, &scsi_status);
    switch(command_status) {
    case 129:
 break;
    case 130:




 error = ciss_notify_abort_bmic(sc);
 if (error != 0)
     goto out;
 break;

    case 128:




 if (scsi_status == CISS_SCSI_STATUS_CHECK_CONDITION) {
     if (sc->ciss_periodic_notify != ((void*)0))
  ciss_release_request(sc->ciss_periodic_notify);
     error = 0;
     goto out;
 }


    default:
 ciss_printf(sc, "Abort Notify Event command failed (%s)\n",
      ciss_name_command_status(command_status));
 error = EIO;
 goto out;
    }
    while (sc->ciss_periodic_notify != ((void*)0)) {
 error = msleep(&sc->ciss_periodic_notify, &sc->ciss_mtx, PRIBIO, "cissNEA", hz * 5);
 if (error == EWOULDBLOCK) {
     ciss_printf(sc, "Notify Event command failed to abort, adapter may wedge.\n");
     break;
 }
    }

 out:

    if (cr != ((void*)0)) {
 if (cr->cr_data != ((void*)0))
     free(cr->cr_data, CISS_MALLOC_CLASS);
 ciss_release_request(cr);
    }
    if (error == 0)
 sc->ciss_flags &= ~CISS_FLAG_NOTIFY_OK;
    return(error);
}
