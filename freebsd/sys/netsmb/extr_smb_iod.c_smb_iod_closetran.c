
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct smbiod {struct thread* iod_td; struct smb_vc* iod_vc; } ;
struct smb_vc {int * vc_tdata; } ;


 int SMB_TRAN_DISCONNECT (struct smb_vc*,struct thread*) ;
 int SMB_TRAN_DONE (struct smb_vc*,struct thread*) ;

__attribute__((used)) static void
smb_iod_closetran(struct smbiod *iod)
{
 struct smb_vc *vcp = iod->iod_vc;
 struct thread *td = iod->iod_td;

 if (vcp->vc_tdata == ((void*)0))
  return;
 SMB_TRAN_DISCONNECT(vcp, td);
 SMB_TRAN_DONE(vcp, td);
 vcp->vc_tdata = ((void*)0);
}
