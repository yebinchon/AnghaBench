
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int shutdwn_recovery; int * recovery_thread; } ;


 int PUSER ;
 int mpt_sleep (struct mpt_softc*,int **,int ,char*,int ) ;
 int wakeup (struct mpt_softc*) ;

__attribute__((used)) static void
mpt_terminate_recovery_thread(struct mpt_softc *mpt)
{

 if (mpt->recovery_thread == ((void*)0)) {
  return;
 }
 mpt->shutdwn_recovery = 1;
 wakeup(mpt);




 mpt_sleep(mpt, &mpt->recovery_thread, PUSER, "thtrm", 0);
}
