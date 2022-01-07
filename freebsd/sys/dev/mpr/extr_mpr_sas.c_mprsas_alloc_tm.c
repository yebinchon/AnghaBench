
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpr_softc {int dummy; } ;
struct mpr_command {scalar_t__ cm_req; } ;
struct TYPE_2__ {int Function; } ;
typedef TYPE_1__ MPI2_SCSI_TASK_MANAGE_REQUEST ;


 int MPI2_FUNCTION_SCSI_TASK_MGMT ;
 int MPR_FUNCTRACE (struct mpr_softc*) ;
 struct mpr_command* mpr_alloc_high_priority_command (struct mpr_softc*) ;

struct mpr_command *
mprsas_alloc_tm(struct mpr_softc *sc)
{
 MPI2_SCSI_TASK_MANAGE_REQUEST *req;
 struct mpr_command *tm;

 MPR_FUNCTRACE(sc);
 tm = mpr_alloc_high_priority_command(sc);
 if (tm == ((void*)0))
  return (((void*)0));

 req = (MPI2_SCSI_TASK_MANAGE_REQUEST *)tm->cm_req;
 req->Function = MPI2_FUNCTION_SCSI_TASK_MGMT;
 return tm;
}
