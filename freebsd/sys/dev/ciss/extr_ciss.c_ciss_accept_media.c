
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ciss_softc {int dummy; } ;
struct ciss_request {struct ciss_softc* cr_sc; struct ciss_command* cr_cc; } ;
struct TYPE_5__ {int lun; } ;
struct TYPE_6__ {TYPE_1__ logical; } ;
struct ciss_ldrive {int * cl_controller; TYPE_2__ cl_address; } ;
struct TYPE_8__ {int * cdb; } ;
struct TYPE_7__ {int address; } ;
struct ciss_command {TYPE_4__ cdb; TYPE_3__ header; } ;
struct ciss_bmic_cdb {int log_drive; } ;


 int CISS_BMIC_ACCEPT_MEDIA ;

 int CISS_LUN_TO_TARGET (int ) ;
 int ciss_get_bmic_request (struct ciss_softc*,struct ciss_request**,int ,int *,int ) ;
 int ciss_name_command_status (int) ;
 int ciss_printf (struct ciss_softc*,char*,int) ;
 int ciss_release_request (struct ciss_request*) ;
 int ciss_report_request (struct ciss_request*,int*,int *) ;
 int ciss_synch_request (struct ciss_request*,int) ;
 int debug (int ,char*,int) ;

__attribute__((used)) static int
ciss_accept_media(struct ciss_softc *sc, struct ciss_ldrive *ld)
{
    struct ciss_request *cr;
    struct ciss_command *cc;
    struct ciss_bmic_cdb *cbc;
    int command_status;
    int error = 0, ldrive;

    ldrive = CISS_LUN_TO_TARGET(ld->cl_address.logical.lun);

    debug(0, "bringing logical drive %d back online", ldrive);




    if ((error = ciss_get_bmic_request(sc, &cr, CISS_BMIC_ACCEPT_MEDIA,
           ((void*)0), 0)) != 0)
 goto out;
    cc = cr->cr_cc;
    cc->header.address = *ld->cl_controller;
    cbc = (struct ciss_bmic_cdb *)&(cc->cdb.cdb[0]);
    cbc->log_drive = ldrive;




    if ((error = ciss_synch_request(cr, 60 * 1000)) != 0) {
 ciss_printf(sc, "error sending BMIC ACCEPT MEDIA command (%d)\n", error);
 goto out;
    }




    ciss_report_request(cr, &command_status, ((void*)0));
    switch(command_status) {
    case 128:

 break;
    default:
 ciss_printf(cr->cr_sc, "error accepting media into failed logical drive (%s)\n",
      ciss_name_command_status(command_status));
 break;
    }

out:
    if (cr != ((void*)0))
 ciss_release_request(cr);
    return(error);
}
