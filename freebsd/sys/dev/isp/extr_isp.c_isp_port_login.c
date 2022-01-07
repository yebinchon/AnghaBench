
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int* param; int ibits; int timeout; int logval; } ;
typedef TYPE_1__ mbreg_t ;
typedef int ispsoftc_t ;


 scalar_t__ ISP_CAP_2KLOGIN (int *) ;
 int ISP_LOG_SANCFG ;
 int ISP_LOG_WARN1 ;
 int MBLOGNONE ;



 int MBOX_FABRIC_LOGIN ;


 int MBSINIT (TYPE_1__*,int ,int ,int) ;
 int isp_mboxcmd (int *,TYPE_1__*) ;
 int isp_prt (int *,int,char*,...) ;

__attribute__((used)) static int
isp_port_login(ispsoftc_t *isp, uint16_t handle, uint32_t portid)
{
 mbreg_t mbs;

 MBSINIT(&mbs, MBOX_FABRIC_LOGIN, MBLOGNONE, 500000);
 if (ISP_CAP_2KLOGIN(isp)) {
  mbs.param[1] = handle;
  mbs.ibits = (1 << 10);
 } else {
  mbs.param[1] = handle << 8;
 }
 mbs.param[2] = portid >> 16;
 mbs.param[3] = portid;
 mbs.logval = MBLOGNONE;
 mbs.timeout = 500000;
 isp_mboxcmd(isp, &mbs);

 switch (mbs.param[0]) {
 case 128:
  isp_prt(isp, ISP_LOG_SANCFG|ISP_LOG_WARN1, "isp_port_login: portid 0x%06x already logged in as 0x%x", portid, mbs.param[1]);
  return (128 | (mbs.param[1] << 16));

 case 129:
  isp_prt(isp, ISP_LOG_SANCFG|ISP_LOG_WARN1, "isp_port_login: handle 0x%x in use for port id 0x%02xXXXX", handle, mbs.param[1] & 0xff);
  return (129);

 case 131:
  return (0);

 case 130:
  isp_prt(isp, ISP_LOG_SANCFG|ISP_LOG_WARN1, "isp_port_login: error 0x%x in PLOGI to port 0x%06x", mbs.param[1], portid);
  return (130);

 case 132:
  isp_prt(isp, ISP_LOG_SANCFG|ISP_LOG_WARN1, "isp_port_login: all IDs used for fabric login");
  return (132);

 default:
  isp_prt(isp, ISP_LOG_SANCFG, "isp_port_login: error 0x%x on port login of 0x%06x@0x%0x", mbs.param[0], portid, handle);
  return (mbs.param[0]);
 }
}
