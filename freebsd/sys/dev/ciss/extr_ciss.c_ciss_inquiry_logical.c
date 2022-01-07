
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_inquiry {int length; int page_code; int byte2; int opcode; } ;
struct ciss_softc {int dummy; } ;
struct ciss_request {int cr_length; int cr_flags; int * cr_data; struct ciss_command* cr_cc; } ;
struct ciss_ldrive {int cl_address; int cl_geometry; } ;
struct TYPE_4__ {int cdb_length; int timeout; int * cdb; int direction; int attribute; int type; } ;
struct TYPE_3__ {int address; } ;
struct ciss_command {TYPE_2__ cdb; TYPE_1__ header; } ;


 int CISS_CDB_ATTRIBUTE_SIMPLE ;
 int CISS_CDB_DIRECTION_READ ;
 int CISS_CDB_TYPE_COMMAND ;



 int CISS_REQ_DATAIN ;
 int CISS_VPD_LOGICAL_DRIVE_GEOMETRY ;
 int INQUIRY ;
 int SI_EVPD ;
 int bzero (int *,int) ;
 int ciss_get_request (struct ciss_softc*,struct ciss_request**) ;
 int ciss_name_command_status (int) ;
 int ciss_printf (struct ciss_softc*,char*,...) ;
 int ciss_release_request (struct ciss_request*) ;
 int ciss_report_request (struct ciss_request*,int*,int *) ;
 int ciss_synch_request (struct ciss_request*,int) ;
 int scsi_ulto2b (int,int ) ;

__attribute__((used)) static int
ciss_inquiry_logical(struct ciss_softc *sc, struct ciss_ldrive *ld)
{
    struct ciss_request *cr;
    struct ciss_command *cc;
    struct scsi_inquiry *inq;
    int error;
    int command_status;

    cr = ((void*)0);

    bzero(&ld->cl_geometry, sizeof(ld->cl_geometry));

    if ((error = ciss_get_request(sc, &cr)) != 0)
 goto out;

    cc = cr->cr_cc;
    cr->cr_data = &ld->cl_geometry;
    cr->cr_length = sizeof(ld->cl_geometry);
    cr->cr_flags = CISS_REQ_DATAIN;

    cc->header.address = ld->cl_address;
    cc->cdb.cdb_length = 6;
    cc->cdb.type = CISS_CDB_TYPE_COMMAND;
    cc->cdb.attribute = CISS_CDB_ATTRIBUTE_SIMPLE;
    cc->cdb.direction = CISS_CDB_DIRECTION_READ;
    cc->cdb.timeout = 30;

    inq = (struct scsi_inquiry *)&(cc->cdb.cdb[0]);
    inq->opcode = INQUIRY;
    inq->byte2 = SI_EVPD;
    inq->page_code = CISS_VPD_LOGICAL_DRIVE_GEOMETRY;
    scsi_ulto2b(sizeof(ld->cl_geometry), inq->length);

    if ((error = ciss_synch_request(cr, 60 * 1000)) != 0) {
 ciss_printf(sc, "error getting geometry (%d)\n", error);
 goto out;
    }

    ciss_report_request(cr, &command_status, ((void*)0));
    switch(command_status) {
    case 128:
    case 129:
 break;
    case 130:
 ciss_printf(sc, "WARNING: Data overrun\n");
 break;
    default:
 ciss_printf(sc, "Error detecting logical drive geometry (%s)\n",
      ciss_name_command_status(command_status));
 break;
    }

out:
    if (cr != ((void*)0))
 ciss_release_request(cr);
    return(error);
}
