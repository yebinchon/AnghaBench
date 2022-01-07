
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_t2rq {int t2_flags; } ;


 int EINVAL ;
 int SMBR_RESTART ;
 int SMBT2_NORESTART ;
 int SMBT2_RESTART ;
 int SMB_MAXRCN ;
 int smb_t2_request_int (struct smb_t2rq*) ;

int
smb_t2_request(struct smb_t2rq *t2p)
{
 int error = EINVAL, i;

 for (i = 0; i < SMB_MAXRCN; i++) {
  t2p->t2_flags &= ~SMBR_RESTART;
  error = smb_t2_request_int(t2p);
  if (error == 0)
   break;
  if ((t2p->t2_flags & (SMBT2_RESTART | SMBT2_NORESTART)) != SMBT2_RESTART)
   break;
 }
 return error;
}
