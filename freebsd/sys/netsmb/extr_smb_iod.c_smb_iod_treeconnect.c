
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbiod {scalar_t__ iod_state; int iod_scred; } ;
struct smb_share {int ss_vcgenid; int ss_flags; } ;


 int ENOTCONN ;
 int SMBIODEBUG (char*) ;
 scalar_t__ SMBIOD_ST_DEAD ;
 scalar_t__ SMBIOD_ST_RECONNECT ;
 scalar_t__ SMBIOD_ST_VCACTIVE ;
 int SMBS_RECONNECTING ;
 int SMBS_ST_LOCK (struct smb_share*) ;
 int SMBS_ST_UNLOCK (struct smb_share*) ;
 int smb_iod_connect (struct smbiod*) ;
 int smb_smb_treeconnect (struct smb_share*,int *) ;
 int wakeup (int *) ;

__attribute__((used)) static int
smb_iod_treeconnect(struct smbiod *iod, struct smb_share *ssp)
{
 int error;

 if (iod->iod_state != SMBIOD_ST_VCACTIVE) {
  if (iod->iod_state != SMBIOD_ST_DEAD)
   return ENOTCONN;
  iod->iod_state = SMBIOD_ST_RECONNECT;
  error = smb_iod_connect(iod);
  if (error)
   return error;
 }
 SMBIODEBUG("tree reconnect\n");
 SMBS_ST_LOCK(ssp);
 ssp->ss_flags |= SMBS_RECONNECTING;
 SMBS_ST_UNLOCK(ssp);
 error = smb_smb_treeconnect(ssp, &iod->iod_scred);
 SMBS_ST_LOCK(ssp);
 ssp->ss_flags &= ~SMBS_RECONNECTING;
 SMBS_ST_UNLOCK(ssp);
 wakeup(&ssp->ss_vcgenid);
 return error;
}
