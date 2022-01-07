
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int mname ;
struct TYPE_14__ {unsigned int* param; unsigned int ibits; unsigned int obits; unsigned int ibitm; unsigned int obitm; int logval; } ;
typedef TYPE_1__ mbreg_t ;
struct TYPE_15__ {int* isp_mboxtmp; unsigned int isp_lastmbxcmd; unsigned int isp_obits; int isp_mboxbsy; } ;
typedef TYPE_2__ ispsoftc_t ;


 int BIU2400_HCCR ;
 int HCCR ;
 int HCCR_2400_CMD_SET_HOST_INT ;
 int HCCR_CMD_SET_HOST_INT ;
 unsigned int ISP_FC_IBITS (unsigned int) ;
 unsigned int ISP_FC_OBITS (unsigned int) ;
 int ISP_LOGALL ;
 int ISP_LOGDEBUG3 ;
 int ISP_LOGERR ;
 unsigned int ISP_NMBOX (TYPE_2__*) ;
 unsigned int ISP_SCSI_IBITS (unsigned int) ;
 unsigned int ISP_SCSI_OBITS (unsigned int) ;
 int ISP_SNPRINTF (char*,int,char*,unsigned int) ;
 int ISP_WRITE (TYPE_2__*,int ,int) ;
 scalar_t__ IS_24XX (TYPE_2__*) ;
 scalar_t__ IS_FC (TYPE_2__*) ;
 unsigned int MAX_FC_OPCODE ;
 unsigned int MAX_SCSI_OPCODE ;
 int MBLOGMASK (int) ;
 scalar_t__ MBOX_ACQUIRE (TYPE_2__*) ;


 int MBOX_COMMAND_COMPLETE ;
 int MBOX_OFF (unsigned int) ;


 int MBOX_RELEASE (TYPE_2__*) ;


 int MBOX_WAIT_COMPLETE (TYPE_2__*,TYPE_1__*) ;
 char** fc_mbcmd_names ;
 int isp_prt (TYPE_2__*,int ,char*,...) ;
 char** scsi_mbcmd_names ;

__attribute__((used)) static void
isp_mboxcmd(ispsoftc_t *isp, mbreg_t *mbp)
{
 const char *cname, *xname, *sname;
 char tname[16], mname[16];
 unsigned int ibits, obits, box, opcode;

 opcode = mbp->param[0];
 if (IS_FC(isp)) {
  if (opcode > MAX_FC_OPCODE) {
   mbp->param[0] = 137;
   isp_prt(isp, ISP_LOGERR, "Unknown Command 0x%x", opcode);
   return;
  }
  cname = fc_mbcmd_names[opcode];
  ibits = ISP_FC_IBITS(opcode);
  obits = ISP_FC_OBITS(opcode);
 } else {
  if (opcode > MAX_SCSI_OPCODE) {
   mbp->param[0] = 137;
   isp_prt(isp, ISP_LOGERR, "Unknown Command 0x%x", opcode);
   return;
  }
  cname = scsi_mbcmd_names[opcode];
  ibits = ISP_SCSI_IBITS(opcode);
  obits = ISP_SCSI_OBITS(opcode);
 }
 if (cname == ((void*)0)) {
  cname = tname;
  ISP_SNPRINTF(tname, sizeof tname, "opcode %x", opcode);
 }
 isp_prt(isp, ISP_LOGDEBUG3, "Mailbox Command '%s'", cname);




 ibits |= mbp->ibits;
 obits |= mbp->obits;




 ibits &= mbp->ibitm;
 obits &= mbp->obitm;


 if (ibits == 0 && obits == 0) {
  mbp->param[0] = 139;
  isp_prt(isp, ISP_LOGERR, "no parameters for 0x%x", opcode);
  return;
 }




 if (MBOX_ACQUIRE(isp)) {
  mbp->param[0] = 130;
  goto out;
 }

 for (box = 0; box < ISP_NMBOX(isp); box++) {
  if (ibits & (1 << box)) {
   isp_prt(isp, ISP_LOGDEBUG3, "IN mbox %d = 0x%04x", box,
       mbp->param[box]);
   ISP_WRITE(isp, MBOX_OFF(box), mbp->param[box]);
  }
  isp->isp_mboxtmp[box] = mbp->param[box] = 0;
 }

 isp->isp_lastmbxcmd = opcode;




 isp->isp_obits = obits;
 isp->isp_mboxbsy = 1;




 if (IS_24XX(isp)) {
  ISP_WRITE(isp, BIU2400_HCCR, HCCR_2400_CMD_SET_HOST_INT);
 } else {
  ISP_WRITE(isp, HCCR, HCCR_CMD_SET_HOST_INT);
 }




 MBOX_WAIT_COMPLETE(isp, mbp);




 if (mbp->param[0] == 128) {
  isp->isp_mboxbsy = 0;
  MBOX_RELEASE(isp);
  goto out;
 }




 for (box = 0; box < ISP_NMBOX(isp); box++) {
  if (obits & (1 << box)) {
   mbp->param[box] = isp->isp_mboxtmp[box];
   isp_prt(isp, ISP_LOGDEBUG3, "OUT mbox %d = 0x%04x", box,
       mbp->param[box]);
  }
 }

 isp->isp_mboxbsy = 0;
 MBOX_RELEASE(isp);
out:
 if (mbp->logval == 0 || mbp->param[0] == MBOX_COMMAND_COMPLETE)
  return;

 if ((mbp->param[0] & 0xbfe0) == 0 &&
     (mbp->logval & MBLOGMASK(mbp->param[0])) == 0)
  return;

 xname = ((void*)0);
 sname = "";
 switch (mbp->param[0]) {
 case 137:
  xname = "INVALID COMMAND";
  break;
 case 138:
  xname = "HOST INTERFACE ERROR";
  break;
 case 129:
  xname = "TEST FAILED";
  break;
 case 140:
  xname = "COMMAND ERROR";
  ISP_SNPRINTF(mname, sizeof(mname), " subcode 0x%x",
      mbp->param[1]);
  sname = mname;
  break;
 case 139:
  xname = "COMMAND PARAMETER ERROR";
  break;
 case 131:
  xname = "PORT ID ALREADY IN USE";
  break;
 case 133:
  xname = "LOOP ID ALREADY IN USE";
  break;
 case 142:
  xname = "ALL LOOP IDS IN USE";
  break;
 case 132:
  xname = "NOT LOGGED IN";
  break;
 case 135:
  xname = "LINK DOWN ERROR";
  break;
 case 134:
  xname = "LOOPBACK ERROR";
  break;
 case 141:
  xname = "CHECKSUM ERROR";
  break;
 case 136:
  xname = "INVALID PRODUCT KEY";
  break;
 case 130:
  xname = "REGISTERS BUSY";
  break;
 case 128:
  xname = "TIMEOUT";
  break;
 default:
  ISP_SNPRINTF(mname, sizeof mname, "error 0x%x", mbp->param[0]);
  xname = mname;
  break;
 }
 if (xname) {
  isp_prt(isp, ISP_LOGALL, "Mailbox Command '%s' failed (%s%s)",
      cname, xname, sname);
 }
}
