
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union ciss_device_address {int dummy; } ciss_device_address ;
struct ciss_softc {TYPE_5__* ciss_cfg; } ;
struct ciss_request {int cr_length; int cr_flags; struct ciss_lun_report* cr_data; struct ciss_command* cr_cc; } ;
struct ciss_report_cdb {int opcode; void* length; } ;
struct ciss_lun_report {void* list_size; } ;
struct TYPE_9__ {int cdb_length; int timeout; int * cdb; int direction; int attribute; int type; } ;
struct TYPE_6__ {scalar_t__ target; scalar_t__ bus; int mode; } ;
struct TYPE_7__ {TYPE_1__ physical; } ;
struct TYPE_8__ {TYPE_2__ address; } ;
struct ciss_command {TYPE_4__ cdb; TYPE_3__ header; } ;
struct TYPE_10__ {int max_logical_supported; } ;


 int CISS_CDB_ATTRIBUTE_SIMPLE ;
 int CISS_CDB_DIRECTION_READ ;
 int CISS_CDB_TYPE_COMMAND ;



 int CISS_HDR_ADDRESS_MODE_PERIPHERAL ;
 int CISS_MALLOC_CLASS ;
 int CISS_REQ_DATAIN ;
 int EIO ;
 int ENOMEM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int bzero (struct ciss_report_cdb*,int) ;
 int ciss_get_request (struct ciss_softc*,struct ciss_request**) ;
 int ciss_name_command_status (int) ;
 int ciss_printf (struct ciss_softc*,char*,...) ;
 int ciss_release_request (struct ciss_request*) ;
 int ciss_report_request (struct ciss_request*,int*,int *) ;
 int ciss_synch_request (struct ciss_request*,int) ;
 int debug_called (int) ;
 int free (struct ciss_lun_report*,int ) ;
 void* htonl (int) ;
 struct ciss_lun_report* malloc (int,int ,int) ;

__attribute__((used)) static struct ciss_lun_report *
ciss_report_luns(struct ciss_softc *sc, int opcode, int nunits)
{
    struct ciss_request *cr;
    struct ciss_command *cc;
    struct ciss_report_cdb *crc;
    struct ciss_lun_report *cll;
    int command_status;
    int report_size;
    int error = 0;

    debug_called(1);

    cr = ((void*)0);
    cll = ((void*)0);




    if ((error = ciss_get_request(sc, &cr)) != 0)
 goto out;
    report_size = sizeof(*cll) + nunits * sizeof(union ciss_device_address);
    if ((cll = malloc(report_size, CISS_MALLOC_CLASS, M_NOWAIT | M_ZERO)) == ((void*)0)) {
 ciss_printf(sc, "can't allocate memory for lun report\n");
 error = ENOMEM;
 goto out;
    }




    cc = cr->cr_cc;
    cr->cr_data = cll;
    cr->cr_length = report_size;
    cr->cr_flags = CISS_REQ_DATAIN;

    cc->header.address.physical.mode = CISS_HDR_ADDRESS_MODE_PERIPHERAL;
    cc->header.address.physical.bus = 0;
    cc->header.address.physical.target = 0;
    cc->cdb.cdb_length = sizeof(*crc);
    cc->cdb.type = CISS_CDB_TYPE_COMMAND;
    cc->cdb.attribute = CISS_CDB_ATTRIBUTE_SIMPLE;
    cc->cdb.direction = CISS_CDB_DIRECTION_READ;
    cc->cdb.timeout = 30;

    crc = (struct ciss_report_cdb *)&(cc->cdb.cdb[0]);
    bzero(crc, sizeof(*crc));
    crc->opcode = opcode;
    crc->length = htonl(report_size);
    cll->list_size = htonl(report_size - sizeof(*cll));





    if ((error = ciss_synch_request(cr, 60 * 1000)) != 0) {
 ciss_printf(sc, "error sending %d LUN command (%d)\n", opcode, error);
 goto out;
    }




    ciss_report_request(cr, &command_status, ((void*)0));
    switch(command_status) {
    case 128:
    case 129:
 break;
    case 130:
 ciss_printf(sc, "WARNING: more units than driver limit (%d)\n",
      sc->ciss_cfg->max_logical_supported);
 break;
    default:
 ciss_printf(sc, "error detecting logical drive configuration (%s)\n",
      ciss_name_command_status(command_status));
 error = EIO;
 goto out;
    }
    ciss_release_request(cr);
    cr = ((void*)0);

out:
    if (cr != ((void*)0))
 ciss_release_request(cr);
    if (error && cll != ((void*)0)) {
 free(cll, CISS_MALLOC_CLASS);
 cll = ((void*)0);
    }
    return(cll);
}
