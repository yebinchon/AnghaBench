
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbiod {int iod_flags; int iod_evlock; int iod_rqlock; int iod_sleeptimo; int iod_td; int iod_scred; } ;


 int Giant ;
 int M_SMBIOD ;
 int PWAIT ;
 int SMBIODEBUG (char*,int ) ;
 int SMBIOD_SHUTDOWN ;
 int curthread ;
 int free (struct smbiod*,int ) ;
 int kproc_exit (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int smb_iod_main (struct smbiod*) ;
 int smb_makescred (int *,int ,int *) ;
 int smb_sl_destroy (int *) ;
 int tsleep (int*,int ,char*,int ) ;

void
smb_iod_thread(void *arg)
{
 struct smbiod *iod = arg;

 mtx_lock(&Giant);





 iod->iod_td = curthread;
 smb_makescred(&iod->iod_scred, iod->iod_td, ((void*)0));
 while ((iod->iod_flags & SMBIOD_SHUTDOWN) == 0) {
  smb_iod_main(iod);
  SMBIODEBUG("going to sleep for %d ticks\n", iod->iod_sleeptimo);
  if (iod->iod_flags & SMBIOD_SHUTDOWN)
   break;
  tsleep(&iod->iod_flags, PWAIT, "90idle", iod->iod_sleeptimo);
 }


 smb_sl_destroy(&iod->iod_rqlock);
 smb_sl_destroy(&iod->iod_evlock);
 free(iod, M_SMBIOD);
 mtx_unlock(&Giant);
 kproc_exit(0);
}
