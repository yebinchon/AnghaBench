
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {int * vc_iod; } ;


 int SMBIOD_EV_DISCONNECT ;
 int SMBIOD_EV_SYNC ;
 int smb_iod_request (int *,int,int *) ;

int
smb_vc_disconnect(struct smb_vc *vcp)
{

 if (vcp->vc_iod != ((void*)0))
  smb_iod_request(vcp->vc_iod, SMBIOD_EV_DISCONNECT |
      SMBIOD_EV_SYNC, ((void*)0));
 return 0;
}
