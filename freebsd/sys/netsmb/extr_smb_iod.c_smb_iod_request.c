
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbiod_event {int ev_type; int ev_error; void* ev_ident; } ;
struct smbiod {int iod_evlist; } ;


 int M_SMBIOD ;
 int M_WAITOK ;
 int PDROP ;
 int PWAIT ;
 int SMBIODEBUG (char*) ;
 int SMBIOD_EV_SYNC ;
 int SMB_IOD_EVLOCK (struct smbiod*) ;
 int SMB_IOD_EVLOCKPTR (struct smbiod*) ;
 int SMB_IOD_EVUNLOCK (struct smbiod*) ;
 int STAILQ_INSERT_TAIL (int *,struct smbiod_event*,int ) ;
 int ev_link ;
 int free (struct smbiod_event*,int ) ;
 int msleep (struct smbiod_event*,int ,int,char*,int ) ;
 int smb_iod_wakeup (struct smbiod*) ;
 struct smbiod_event* smb_zmalloc (int,int ,int ) ;

int
smb_iod_request(struct smbiod *iod, int event, void *ident)
{
 struct smbiod_event *evp;
 int error;

 SMBIODEBUG("\n");
 evp = smb_zmalloc(sizeof(*evp), M_SMBIOD, M_WAITOK);
 evp->ev_type = event;
 evp->ev_ident = ident;
 SMB_IOD_EVLOCK(iod);
 STAILQ_INSERT_TAIL(&iod->iod_evlist, evp, ev_link);
 if ((event & SMBIOD_EV_SYNC) == 0) {
  SMB_IOD_EVUNLOCK(iod);
  smb_iod_wakeup(iod);
  return 0;
 }
 smb_iod_wakeup(iod);
 msleep(evp, SMB_IOD_EVLOCKPTR(iod), PWAIT | PDROP, "90evw", 0);
 error = evp->ev_error;
 free(evp, M_SMBIOD);
 return error;
}
