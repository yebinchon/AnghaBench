
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;
union ccb {struct ccb_scsiio csio; } ;
struct cam_sim {int dummy; } ;


 int NON_READ_WRITE_LDIO ;
 int NON_READ_WRITE_SYSPDIO ;




 int READ_WRITE_LDIO ;
 int READ_WRITE_SYSPDIO ;




 int cam_sim_bus (struct cam_sim*) ;

int
mrsas_find_io_type(struct cam_sim *sim, union ccb *ccb)
{
 struct ccb_scsiio *csio = &(ccb->csio);

 switch (csio->cdb_io.cdb_bytes[0]) {
 case 135:
 case 131:
 case 134:
 case 130:
 case 132:
 case 128:
 case 133:
 case 129:
  return (cam_sim_bus(sim) ?
      READ_WRITE_SYSPDIO : READ_WRITE_LDIO);
 default:
  return (cam_sim_bus(sim) ?
      NON_READ_WRITE_SYSPDIO : NON_READ_WRITE_LDIO);
 }
}
