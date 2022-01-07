
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int* param; int ibits; } ;
typedef TYPE_1__ mbreg_t ;
typedef int ispsoftc_t ;


 scalar_t__ ISP_CAP_2KLOGIN (int *) ;
 int MBLOGNONE ;
 int MBOX_COMMAND_COMPLETE ;
 int MBOX_FABRIC_LOGOUT ;
 int MBSINIT (TYPE_1__*,int ,int ,int) ;
 int isp_mboxcmd (int *,TYPE_1__*) ;

__attribute__((used)) static int
isp_port_logout(ispsoftc_t *isp, uint16_t handle, uint32_t portid)
{
 mbreg_t mbs;

 MBSINIT(&mbs, MBOX_FABRIC_LOGOUT, MBLOGNONE, 500000);
 if (ISP_CAP_2KLOGIN(isp)) {
  mbs.param[1] = handle;
  mbs.ibits = (1 << 10);
 } else {
  mbs.param[1] = handle << 8;
 }
 isp_mboxcmd(isp, &mbs);
 return (mbs.param[0] == MBOX_COMMAND_COMPLETE? 0 : mbs.param[0]);
}
