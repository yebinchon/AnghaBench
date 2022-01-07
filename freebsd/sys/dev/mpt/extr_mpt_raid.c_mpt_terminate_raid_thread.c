
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int shutdwn_raid; int * raid_thread; int raid_volumes; } ;


 int PUSER ;
 int mpt_sleep (struct mpt_softc*,int **,int ,char*,int ) ;
 int wakeup (int *) ;

__attribute__((used)) static void
mpt_terminate_raid_thread(struct mpt_softc *mpt)
{

 if (mpt->raid_thread == ((void*)0)) {
  return;
 }
 mpt->shutdwn_raid = 1;
 wakeup(&mpt->raid_volumes);




 mpt_sleep(mpt, &mpt->raid_thread, PUSER, "thtrm", 0);
}
