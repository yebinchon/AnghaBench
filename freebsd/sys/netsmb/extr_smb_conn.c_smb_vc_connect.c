
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {int vc_iod; } ;
struct smb_cred {int dummy; } ;


 int SMBIOD_EV_CONNECT ;
 int SMBIOD_EV_SYNC ;
 int smb_iod_request (int ,int,int *) ;

int
smb_vc_connect(struct smb_vc *vcp, struct smb_cred *scred)
{

 return smb_iod_request(vcp->vc_iod, SMBIOD_EV_CONNECT | SMBIOD_EV_SYNC, ((void*)0));
}
