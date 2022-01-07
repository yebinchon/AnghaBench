
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ciss_softc {int ciss_flags; struct ciss_request* ciss_periodic_notify; } ;
struct ciss_request {int * cr_data; struct ciss_command* cr_cc; int cr_length; int cr_tag; int cr_complete; } ;
struct ciss_notify_cdb {int new_only; int length; scalar_t__ seek_to_oldest; scalar_t__ ordered; scalar_t__ synchronous; scalar_t__ timeout; int command; int opcode; } ;
struct TYPE_8__ {int cdb_length; int * cdb; scalar_t__ timeout; int direction; int attribute; int type; } ;
struct TYPE_5__ {scalar_t__ target; scalar_t__ bus; int mode; } ;
struct TYPE_6__ {TYPE_1__ physical; } ;
struct TYPE_7__ {TYPE_2__ address; } ;
struct ciss_command {TYPE_4__ cdb; TYPE_3__ header; } ;


 int CISS_CDB_ATTRIBUTE_SIMPLE ;
 int CISS_CDB_DIRECTION_READ ;
 int CISS_CDB_TYPE_COMMAND ;
 int CISS_COMMAND_NOTIFY_ON_EVENT ;
 int CISS_FLAG_NOTIFY_OK ;
 int CISS_FLAG_RUNNING ;
 int CISS_HDR_ADDRESS_MODE_PERIPHERAL ;
 int CISS_MALLOC_CLASS ;
 int CISS_NOTIFY_DATA_SIZE ;
 int CISS_OPCODE_READ ;
 int ENOMEM ;
 int M_NOWAIT ;
 int bzero (int *,int ) ;
 int ciss_get_request (struct ciss_softc*,struct ciss_request**) ;
 int ciss_notify_complete ;
 int ciss_preen_command (struct ciss_request*) ;
 int ciss_release_request (struct ciss_request*) ;
 int ciss_start (struct ciss_request*) ;
 int debug (int,char*,...) ;
 int debug_called (int) ;
 int free (int *,int ) ;
 int htonl (int ) ;
 int * malloc (int ,int ,int ) ;

__attribute__((used)) static void
ciss_notify_event(struct ciss_softc *sc)
{
    struct ciss_request *cr;
    struct ciss_command *cc;
    struct ciss_notify_cdb *cnc;
    int error;

    debug_called(1);

    cr = sc->ciss_periodic_notify;


    if (cr == ((void*)0)) {
 if ((error = ciss_get_request(sc, &cr)) != 0) {
     debug(0, "can't get notify event request");
     goto out;
 }
 sc->ciss_periodic_notify = cr;
 cr->cr_complete = ciss_notify_complete;
 debug(1, "acquired request %d", cr->cr_tag);
    }






    if (cr->cr_data == ((void*)0)) {
 if ((cr->cr_data = malloc(CISS_NOTIFY_DATA_SIZE, CISS_MALLOC_CLASS, M_NOWAIT)) == ((void*)0)) {
     debug(0, "can't get notify event request buffer");
     error = ENOMEM;
     goto out;
 }
 cr->cr_length = CISS_NOTIFY_DATA_SIZE;
    }


    ciss_preen_command(cr);


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
    bzero(cr->cr_data, CISS_NOTIFY_DATA_SIZE);
    cnc->opcode = CISS_OPCODE_READ;
    cnc->command = CISS_COMMAND_NOTIFY_ON_EVENT;
    cnc->timeout = 0;
    cnc->synchronous = 0;
    cnc->ordered = 0;
    cnc->seek_to_oldest = 0;
    if ((sc->ciss_flags & CISS_FLAG_RUNNING) == 0)
 cnc->new_only = 1;
    else
 cnc->new_only = 0;
    cnc->length = htonl(CISS_NOTIFY_DATA_SIZE);


    error = ciss_start(cr);

 out:
    if (error) {
 if (cr != ((void*)0)) {
     if (cr->cr_data != ((void*)0))
  free(cr->cr_data, CISS_MALLOC_CLASS);
     ciss_release_request(cr);
 }
 sc->ciss_periodic_notify = ((void*)0);
 debug(0, "can't submit notify event request");
 sc->ciss_flags &= ~CISS_FLAG_NOTIFY_OK;
    } else {
 debug(1, "notify event submitted");
 sc->ciss_flags |= CISS_FLAG_NOTIFY_OK;
    }
}
