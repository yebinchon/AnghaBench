
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int dummy; } ;


 int MPT_LOCK_ASSERT (struct mpt_softc*) ;
 int mpt_raid_wakeup (struct mpt_softc*) ;

__attribute__((used)) static void
mpt_raid_timer(void *arg)
{
 struct mpt_softc *mpt;

 mpt = (struct mpt_softc *)arg;
 MPT_LOCK_ASSERT(mpt);
 mpt_raid_wakeup(mpt);
}
