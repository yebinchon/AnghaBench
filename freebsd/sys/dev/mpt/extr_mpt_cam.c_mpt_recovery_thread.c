
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {scalar_t__ shutdwn_recovery; int * recovery_thread; int request_timeout_list; } ;


 int MPT_LOCK (struct mpt_softc*) ;
 int MPT_UNLOCK (struct mpt_softc*) ;
 int PUSER ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int kproc_exit (int ) ;
 int mpt_recover_commands (struct mpt_softc*) ;
 int mpt_sleep (struct mpt_softc*,struct mpt_softc*,int ,char*,int ) ;
 int wakeup (int **) ;

__attribute__((used)) static void
mpt_recovery_thread(void *arg)
{
 struct mpt_softc *mpt;

 mpt = (struct mpt_softc *)arg;
 MPT_LOCK(mpt);
 for (;;) {
  if (TAILQ_EMPTY(&mpt->request_timeout_list) != 0) {
   if (mpt->shutdwn_recovery == 0) {
    mpt_sleep(mpt, mpt, PUSER, "idle", 0);
   }
  }
  if (mpt->shutdwn_recovery != 0) {
   break;
  }
  mpt_recover_commands(mpt);
 }
 mpt->recovery_thread = ((void*)0);
 wakeup(&mpt->recovery_thread);
 MPT_UNLOCK(mpt);
 kproc_exit(0);
}
