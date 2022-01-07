
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int priority; } ;
struct TYPE_6__ {int target_id; int timeout; int status; TYPE_2__ pinfo; scalar_t__ target_lun; int func_code; int path_id; } ;
struct TYPE_4__ {int flags; } ;
union ccb {TYPE_3__ ccb_h; TYPE_1__ crcn; } ;
typedef int path_id_t ;
typedef int ccb ;


 int CAMIOCOMMAND ;
 int CAM_FLAG_NONE ;
 scalar_t__ CAM_LUN_WILDCARD ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int CAM_TARGET_WILDCARD ;
 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int XPT_SCAN_BUS ;
 int XPT_SCAN_LUN ;
 int bzero (union ccb*,int) ;
 int errno ;
 int fetch_path_id (int *) ;
 int ioctl (int ,int ,union ccb*) ;
 int warnx (char*,int) ;
 scalar_t__ xpt_open () ;
 int xptfd ;

int
mpt_rescan_bus(int bus, int id)
{
 union ccb ccb;
 path_id_t path_id;
 int error;


 if (bus != -1 && bus != 0)
  return (EINVAL);

 if (xpt_open() < 0)
  return (ENXIO);

 error = fetch_path_id(&path_id);
 if (error)
  return (error);


 bzero(&ccb, sizeof(ccb));
 ccb.ccb_h.path_id = path_id;
 if (id == -1) {
  ccb.ccb_h.func_code = XPT_SCAN_BUS;
  ccb.ccb_h.target_id = CAM_TARGET_WILDCARD;
  ccb.ccb_h.target_lun = CAM_LUN_WILDCARD;
  ccb.ccb_h.timeout = 5000;
 } else {
  ccb.ccb_h.func_code = XPT_SCAN_LUN;
  ccb.ccb_h.target_id = id;
  ccb.ccb_h.target_lun = 0;
 }
 ccb.crcn.flags = CAM_FLAG_NONE;


 ccb.ccb_h.pinfo.priority = 5;

 if (ioctl(xptfd, CAMIOCOMMAND, &ccb) == -1)
  return (errno);

 if ((ccb.ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
  warnx("mpt_rescan_bus rescan got CAM error %#x\n",
      ccb.ccb_h.status & CAM_STATUS_MASK);
  return (EIO);
 }

 return (0);
}
