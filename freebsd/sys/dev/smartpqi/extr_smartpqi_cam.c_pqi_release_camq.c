
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int status; int path; } ;
struct ccb_scsiio {TYPE_1__ ccb_h; } ;
struct TYPE_10__ {TYPE_5__* softs; TYPE_2__* cm_ccb; } ;
typedef TYPE_4__ rcb_t ;
struct TYPE_9__ {int pqi_flags; } ;
struct TYPE_11__ {TYPE_3__ os_specific; } ;
typedef TYPE_5__ pqisrc_softstate_t ;
struct TYPE_8__ {int csio; } ;


 int CAM_RELEASE_SIMQ ;
 int DBG_FUNC (char*) ;
 int PQI_FLAG_BUSY ;
 int xpt_path_sim (int ) ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static void pqi_release_camq( rcb_t *rcb )
{
 pqisrc_softstate_t *softs;
 struct ccb_scsiio *csio;

 csio = (struct ccb_scsiio *)&rcb->cm_ccb->csio;
 softs = rcb->softs;

 DBG_FUNC("IN\n");

 if (softs->os_specific.pqi_flags & PQI_FLAG_BUSY) {
  softs->os_specific.pqi_flags &= ~PQI_FLAG_BUSY;
  if (csio->ccb_h.status & CAM_RELEASE_SIMQ)
   xpt_release_simq(xpt_path_sim(csio->ccb_h.path), 0);
  else
   csio->ccb_h.status |= CAM_RELEASE_SIMQ;
 }

 DBG_FUNC("OUT\n");
}
