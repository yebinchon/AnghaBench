
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct cam_path* path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int uint32_t ;
struct mpt_softc {struct cam_sim* sim; struct cam_sim* phydisk_sim; int ready; struct cam_path* path; } ;
struct TYPE_13__ {int status; int flags; int func_code; } ;
struct ccb_relsim {TYPE_6__ ccb_h; int openings; int release_flags; } ;
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
typedef int request_t ;
typedef int lun_id_t ;
typedef int data0 ;
struct TYPE_12__ {int Event; void** Data; } ;
struct TYPE_11__ {void* DiscoveryStatus; int Port; } ;
struct TYPE_10__ {int CurrentDepth; int TargetID; int Bus; } ;
struct TYPE_9__ {int ReasonCode; int TargetID; int Bus; } ;
typedef TYPE_2__* PTR_EVENT_DATA_SAS_DEVICE_STATUS_CHANGE ;
typedef TYPE_3__* PTR_EVENT_DATA_QUEUE_FULL ;
typedef TYPE_4__* PTR_EVENT_DATA_DISCOVERY_ERROR ;
typedef TYPE_5__ MSG_EVENT_NOTIFY_REPLY ;


 int AC_BUS_RESET ;
 int AC_LOST_DEVICE ;
 int CAM_DEV_QFREEZE ;
 int CAM_LUN_WILDCARD ;
 int CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int MPT_MAX_LUNS ;
 int MPT_PRT_WARN ;
 int RELSIM_ADJUST_OPENINGS ;
 int XPT_REL_SIMQ ;
 int bootverbose ;
 int cam_sim_path (struct cam_sim*) ;
 int le16toh (int ) ;
 void* le32toh (void*) ;
 int mpt_is_raid_member (struct mpt_softc*,int ) ;
 int mpt_lprt (struct mpt_softc*,int ,char*,int,...) ;
 int mpt_prt (struct mpt_softc*,char*,...) ;
 int xpt_action (union ccb*) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 int xpt_async (int ,struct cam_path*,int *) ;
 int xpt_create_path (struct cam_path**,int *,int,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_free_path (struct cam_path*) ;
 int xpt_rescan (union ccb*) ;
 int xpt_setup_ccb (TYPE_6__*,struct cam_path*,int) ;

__attribute__((used)) static int
mpt_cam_event(struct mpt_softc *mpt, request_t *req,
       MSG_EVENT_NOTIFY_REPLY *msg)
{
 uint32_t data0, data1;

 data0 = le32toh(msg->Data[0]);
 data1 = le32toh(msg->Data[1]);
 switch(msg->Event & 0xFF) {
 case 128:
  mpt_prt(mpt, "UNIT ATTENTION: Bus: 0x%02x TargetID: 0x%02x\n",
      (data0 >> 8) & 0xff, data0 & 0xff);
  break;

 case 147:

  mpt_prt(mpt, "IOC Generated Bus Reset Port: %d\n",
      (data0 >> 8) & 0xff);
  xpt_async(AC_BUS_RESET, mpt->path, ((void*)0));
  break;

 case 149:

  mpt_prt(mpt, "External Bus Reset Detected\n");




  xpt_async(AC_BUS_RESET, mpt->path, ((void*)0));
  break;

 case 139:
 {
  union ccb *ccb;
  uint32_t pathid;



  mpt_prt(mpt, "Rescan Port: %d\n", (data0 >> 8) & 0xff);
  if (mpt->ready == 0) {
   break;
  }
  if (mpt->phydisk_sim) {
   pathid = cam_sim_path(mpt->phydisk_sim);
  } else {
   pathid = cam_sim_path(mpt->sim);
  }




  ccb = xpt_alloc_ccb_nowait();
  if (ccb == ((void*)0)) {
   mpt_prt(mpt, "unable to alloc CCB for rescan\n");
   break;
  }

  if (xpt_create_path(&ccb->ccb_h.path, ((void*)0), pathid,
      CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
   mpt_prt(mpt, "unable to create path for rescan\n");
   xpt_free_ccb(ccb);
   break;
  }
  xpt_rescan(ccb);
  break;
 }

 case 144:
  mpt_prt(mpt, "Port %d: LinkState: %s\n",
      (data1 >> 8) & 0xff,
      ((data0 & 0xff) == 0)? "Failed" : "Active");
  break;

 case 141:
  switch ((data0 >> 16) & 0xff) {
  case 0x01:
   mpt_prt(mpt,
       "Port 0x%x: FC LinkEvent: LIP(%02x,%02x) "
       "(Loop Initialization)\n",
       (data1 >> 8) & 0xff,
       (data0 >> 8) & 0xff,
       (data0 ) & 0xff);
   switch ((data0 >> 8) & 0xff) {
   case 0xF7:
    if ((data0 & 0xff) == 0xF7) {
     mpt_prt(mpt, "Device needs AL_PA\n");
    } else {
     mpt_prt(mpt, "Device %02x doesn't like "
         "FC performance\n",
         data0 & 0xFF);
    }
    break;
   case 0xF8:
    if ((data0 & 0xff) == 0xF7) {
     mpt_prt(mpt, "Device had loop failure "
         "at its receiver prior to acquiring"
         " AL_PA\n");
    } else {
     mpt_prt(mpt, "Device %02x detected loop"
         " failure at its receiver\n",
         data0 & 0xFF);
    }
    break;
   default:
    mpt_prt(mpt, "Device %02x requests that device "
        "%02x reset itself\n",
        data0 & 0xFF,
        (data0 >> 8) & 0xFF);
    break;
   }
   break;
  case 0x02:
   mpt_prt(mpt, "Port 0x%x: FC LinkEvent: "
       "LPE(%02x,%02x) (Loop Port Enable)\n",
       (data1 >> 8) & 0xff,
       (data0 >> 8) & 0xff,
       (data0 ) & 0xff );
   break;
  case 0x03:
   mpt_prt(mpt, "Port 0x%x: FC LinkEvent: "
       "LPB(%02x,%02x) (Loop Port Bypass)\n",
       (data1 >> 8) & 0xff,
       (data0 >> 8) & 0xff,
       (data0 ) & 0xff );
   break;
  default:
   mpt_prt(mpt, "Port 0x%x: FC LinkEvent: Unknown "
       "FC event (%02x %02x %02x)\n",
       (data1 >> 8) & 0xff,
       (data0 >> 16) & 0xff,
       (data0 >> 8) & 0xff,
       (data0 ) & 0xff );
  }
  break;

 case 143:
  mpt_prt(mpt, "FC Logout Port: %d N_PortID: %02x\n",
      (data1 >> 8) & 0xff, data0);
  break;
 case 140:
 {
  struct cam_sim *sim;
  struct cam_path *tmppath;
  struct ccb_relsim crs;
  PTR_EVENT_DATA_QUEUE_FULL pqf;
  lun_id_t lun_id;

  pqf = (PTR_EVENT_DATA_QUEUE_FULL)msg->Data;
  pqf->CurrentDepth = le16toh(pqf->CurrentDepth);
  if (bootverbose) {
      mpt_prt(mpt, "QUEUE FULL EVENT: Bus 0x%02x Target 0x%02x "
   "Depth %d\n",
   pqf->Bus, pqf->TargetID, pqf->CurrentDepth);
  }
  if (mpt->phydisk_sim && mpt_is_raid_member(mpt,
      pqf->TargetID) != 0) {
   sim = mpt->phydisk_sim;
  } else {
   sim = mpt->sim;
  }
  for (lun_id = 0; lun_id < MPT_MAX_LUNS; lun_id++) {
   if (xpt_create_path(&tmppath, ((void*)0), cam_sim_path(sim),
       pqf->TargetID, lun_id) != CAM_REQ_CMP) {
    mpt_prt(mpt, "unable to create a path to send "
        "XPT_REL_SIMQ");
    break;
   }
   xpt_setup_ccb(&crs.ccb_h, tmppath, 5);
   crs.ccb_h.func_code = XPT_REL_SIMQ;
   crs.ccb_h.flags = CAM_DEV_QFREEZE;
   crs.release_flags = RELSIM_ADJUST_OPENINGS;
   crs.openings = pqf->CurrentDepth - 1;
   xpt_action((union ccb *)&crs);
   if (crs.ccb_h.status != CAM_REQ_CMP) {
    mpt_prt(mpt, "XPT_REL_SIMQ failed\n");
   }
   xpt_free_path(tmppath);
  }
  break;
 }
 case 145:
  mpt_prt(mpt, "IR resync update %d completed\n",
      (data0 >> 16) & 0xff);
  break;
 case 138:
 {
  union ccb *ccb;
  struct cam_sim *sim;
  struct cam_path *tmppath;
  PTR_EVENT_DATA_SAS_DEVICE_STATUS_CHANGE psdsc;

  psdsc = (PTR_EVENT_DATA_SAS_DEVICE_STATUS_CHANGE)msg->Data;
  if (mpt->phydisk_sim && mpt_is_raid_member(mpt,
      psdsc->TargetID) != 0)
   sim = mpt->phydisk_sim;
  else
   sim = mpt->sim;
  switch(psdsc->ReasonCode) {
  case 137:
   ccb = xpt_alloc_ccb_nowait();
   if (ccb == ((void*)0)) {
    mpt_prt(mpt,
        "unable to alloc CCB for rescan\n");
    break;
   }
   if (xpt_create_path(&ccb->ccb_h.path, ((void*)0),
       cam_sim_path(sim), psdsc->TargetID,
       CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
    mpt_prt(mpt,
        "unable to create path for rescan\n");
    xpt_free_ccb(ccb);
    break;
   }
   xpt_rescan(ccb);
   break;
  case 133:
   if (xpt_create_path(&tmppath, ((void*)0), cam_sim_path(sim),
       psdsc->TargetID, CAM_LUN_WILDCARD) !=
       CAM_REQ_CMP) {
    mpt_prt(mpt,
        "unable to create path for async event");
    break;
   }
   xpt_async(AC_LOST_DEVICE, tmppath, ((void*)0));
   xpt_free_path(tmppath);
   break;
  case 136:
  case 135:
  case 134:
   break;
  default:
   mpt_lprt(mpt, MPT_PRT_WARN,
       "SAS device status change: Bus: 0x%02x TargetID: "
       "0x%02x ReasonCode: 0x%02x\n", psdsc->Bus,
       psdsc->TargetID, psdsc->ReasonCode);
   break;
  }
  break;
 }
 case 131:
 {
  PTR_EVENT_DATA_DISCOVERY_ERROR pde;

  pde = (PTR_EVENT_DATA_DISCOVERY_ERROR)msg->Data;
  pde->DiscoveryStatus = le32toh(pde->DiscoveryStatus);
  mpt_lprt(mpt, MPT_PRT_WARN,
      "SAS discovery error: Port: 0x%02x Status: 0x%08x\n",
      pde->Port, pde->DiscoveryStatus);
  break;
 }
 case 150:
 case 148:
 case 146:
 case 142:
 case 132:
 case 130:
 case 129:
  break;
 default:
  mpt_lprt(mpt, MPT_PRT_WARN, "mpt_cam_event: 0x%x\n",
      msg->Event & 0xFF);
  return (0);
 }
 return (1);
}
