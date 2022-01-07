
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int sv_caps; int sv_maxtx; } ;
struct smb_vc {int vc_hflags2; TYPE_1__ vc_sopt; } ;


 int SMB_CAP_LARGE_WRITEX ;
 int SMB_FLAGS2_SECURITY_SIGNATURE ;
 int SMB_HDRLEN ;

__attribute__((used)) static u_int32_t
smb_vc_maxwrite(struct smb_vc *vcp)
{



 if ((vcp->vc_sopt.sv_caps & SMB_CAP_LARGE_WRITEX) &&
     (vcp->vc_hflags2 & SMB_FLAGS2_SECURITY_SIGNATURE) == 0)
  return (60*1024);
 else
  return (vcp->vc_sopt.sv_maxtx - SMB_HDRLEN - 64);
}
