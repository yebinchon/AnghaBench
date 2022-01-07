
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mpr_softc {int dummy; } ;
struct TYPE_4__ {int RequestFlags; } ;
struct TYPE_5__ {TYPE_1__ Default; } ;
struct mpr_command {int cm_complete; scalar_t__ cm_req; int * cm_sge; int * cm_data; TYPE_2__ cm_desc; } ;
struct TYPE_6__ {scalar_t__ VP_ID; scalar_t__ MsgFlags; int Function; } ;
typedef TYPE_3__ MPI2_PORT_ENABLE_REQUEST ;


 int EBUSY ;
 int MPI2_FUNCTION_PORT_ENABLE ;
 int MPI2_REQ_DESCRIPT_FLAGS_DEFAULT_TYPE ;
 int MPR_FUNCTRACE (struct mpr_softc*) ;
 int MPR_XINFO ;
 struct mpr_command* mpr_alloc_command (struct mpr_softc*) ;
 int mpr_dprint (struct mpr_softc*,int ,char*,struct mpr_command*,scalar_t__,int ) ;
 int mpr_map_command (struct mpr_softc*,struct mpr_command*) ;
 int mprsas_portenable_complete ;

__attribute__((used)) static int
mprsas_send_portenable(struct mpr_softc *sc)
{
 MPI2_PORT_ENABLE_REQUEST *request;
 struct mpr_command *cm;

 MPR_FUNCTRACE(sc);

 if ((cm = mpr_alloc_command(sc)) == ((void*)0))
  return (EBUSY);
 request = (MPI2_PORT_ENABLE_REQUEST *)cm->cm_req;
 request->Function = MPI2_FUNCTION_PORT_ENABLE;
 request->MsgFlags = 0;
 request->VP_ID = 0;
 cm->cm_desc.Default.RequestFlags = MPI2_REQ_DESCRIPT_FLAGS_DEFAULT_TYPE;
 cm->cm_complete = mprsas_portenable_complete;
 cm->cm_data = ((void*)0);
 cm->cm_sge = ((void*)0);

 mpr_map_command(sc, cm);
 mpr_dprint(sc, MPR_XINFO,
     "mpr_send_portenable finished cm %p req %p complete %p\n",
     cm, cm->cm_req, cm->cm_complete);
 return (0);
}
