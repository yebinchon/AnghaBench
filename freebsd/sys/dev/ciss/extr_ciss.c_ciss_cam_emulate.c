
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef scalar_t__ u_int8_t ;
struct ciss_softc {int ciss_flags; TYPE_2__** ciss_logical; TYPE_1__** ciss_physical; } ;
struct TYPE_8__ {int target_id; int flags; int status; int path; } ;
struct TYPE_7__ {scalar_t__* cdb_bytes; scalar_t__ cdb_ptr; } ;
struct ccb_scsiio {scalar_t__ dxfer_len; int* data_ptr; TYPE_4__ ccb_h; TYPE_3__ cdb_io; } ;
struct TYPE_6__ {scalar_t__ cl_status; } ;
struct TYPE_5__ {int cp_online; } ;


 int CAM_CDB_POINTER ;
 int CAM_REQ_CMP ;
 int CAM_SEL_TIMEOUT ;
 size_t CISS_CAM_TO_PBUS (int) ;
 int CISS_FLAG_FAKE_SYNCH ;
 scalar_t__ CISS_IS_PHYSICAL (int) ;
 scalar_t__ CISS_LD_ONLINE ;
 scalar_t__ REPORT_LUNS ;
 scalar_t__ SYNCHRONIZE_CACHE ;
 int cam_sim_bus (int ) ;
 int ciss_flush_adapter (struct ciss_softc*) ;
 int xpt_done (union ccb*) ;
 int xpt_path_sim (int ) ;

__attribute__((used)) static int
ciss_cam_emulate(struct ciss_softc *sc, struct ccb_scsiio *csio)
{
    int bus, target;
    u_int8_t opcode;

    target = csio->ccb_h.target_id;
    bus = cam_sim_bus(xpt_path_sim(csio->ccb_h.path));
    opcode = (csio->ccb_h.flags & CAM_CDB_POINTER) ?
 *(u_int8_t *)csio->cdb_io.cdb_ptr : csio->cdb_io.cdb_bytes[0];

    if (CISS_IS_PHYSICAL(bus)) {
 if (sc->ciss_physical[CISS_CAM_TO_PBUS(bus)][target].cp_online != 1) {
     csio->ccb_h.status |= CAM_SEL_TIMEOUT;
     xpt_done((union ccb *)csio);
     return(1);
 } else
     return(0);
    }






    if (sc->ciss_logical[bus][target].cl_status != CISS_LD_ONLINE) {
 csio->ccb_h.status |= CAM_SEL_TIMEOUT;
 xpt_done((union ccb *)csio);
 return(1);
    }


    if (sc->ciss_flags & CISS_FLAG_FAKE_SYNCH) {




 if (((csio->ccb_h.flags & CAM_CDB_POINTER) ?
      *(u_int8_t *)csio->cdb_io.cdb_ptr : csio->cdb_io.cdb_bytes[0]) == SYNCHRONIZE_CACHE) {
     ciss_flush_adapter(sc);
     csio->ccb_h.status |= CAM_REQ_CMP;
     xpt_done((union ccb *)csio);
     return(1);
 }
    }







    if (opcode == REPORT_LUNS && csio->dxfer_len > 0) {
       csio->data_ptr[3] = 8;
       csio->ccb_h.status |= CAM_REQ_CMP;
       xpt_done((union ccb *)csio);
       return(1);
    }

    return(0);
}
