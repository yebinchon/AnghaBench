
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {struct ucred* td_ucred; } ;
struct smb_cred {struct ucred* scr_cred; struct thread* scr_td; } ;



void
smb_makescred(struct smb_cred *scred, struct thread *td, struct ucred *cred)
{
 if (td) {
  scred->scr_td = td;
  scred->scr_cred = cred ? cred : td->td_ucred;
 } else {
  scred->scr_td = ((void*)0);
  scred->scr_cred = cred ? cred : ((void*)0);
 }
}
