
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ciss_softc {int dummy; } ;
struct ciss_request {struct ciss_command* cr_cc; } ;
struct TYPE_8__ {int lun; } ;
struct TYPE_9__ {TYPE_3__ logical; } ;
struct ciss_ldrive {TYPE_5__* cl_lstatus; int cl_status; TYPE_4__ cl_address; int * cl_controller; } ;
struct TYPE_7__ {int * cdb; } ;
struct TYPE_6__ {int address; } ;
struct ciss_command {TYPE_2__ cdb; TYPE_1__ header; } ;
struct ciss_bmic_cdb {int log_drive; } ;
struct TYPE_10__ {int status; } ;


 int CISS_BMIC_ID_LSTATUS ;



 int CISS_LUN_TO_TARGET (int ) ;
 int EIO ;
 int ciss_decode_ldrive_status (int ) ;
 int ciss_get_bmic_request (struct ciss_softc*,struct ciss_request**,int ,void**,int) ;
 int ciss_name_command_status (int) ;
 int ciss_printf (struct ciss_softc*,char*,...) ;
 int ciss_release_request (struct ciss_request*) ;
 int ciss_report_request (struct ciss_request*,int*,int *) ;
 int ciss_synch_request (struct ciss_request*,int) ;

__attribute__((used)) static int
ciss_get_ldrive_status(struct ciss_softc *sc, struct ciss_ldrive *ld)
{
    struct ciss_request *cr;
    struct ciss_command *cc;
    struct ciss_bmic_cdb *cbc;
    int error, command_status;




    if ((error = ciss_get_bmic_request(sc, &cr, CISS_BMIC_ID_LSTATUS,
           (void **)&ld->cl_lstatus,
           sizeof(*ld->cl_lstatus))) != 0)
 goto out;
    cc = cr->cr_cc;
    cc->header.address = *ld->cl_controller;
    cbc = (struct ciss_bmic_cdb *)&(cc->cdb.cdb[0]);
    cbc->log_drive = CISS_LUN_TO_TARGET(ld->cl_address.logical.lun);




    if ((error = ciss_synch_request(cr, 60 * 1000)) != 0) {
 ciss_printf(sc, "error sending BMIC LSTATUS command (%d)\n", error);
 goto out;
    }




    ciss_report_request(cr, &command_status, ((void*)0));
    switch(command_status) {
    case 128:
 break;
    case 129:
    case 130:
 ciss_printf(sc, "data over/underrun reading logical drive status\n");
    default:
 ciss_printf(sc, "error reading logical drive status (%s)\n",
      ciss_name_command_status(command_status));
 error = EIO;
 goto out;
    }







    ld->cl_status = ciss_decode_ldrive_status(ld->cl_lstatus->status);

out:
    if (cr != ((void*)0))
 ciss_release_request(cr);
    return(error);
}
