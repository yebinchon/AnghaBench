
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int raid_timer; } ;


 int MPT_RAID_SYNC_REPORT_INTERVAL ;
 int callout_reset (int *,int ,int ,struct mpt_softc*) ;
 int mpt_raid_timer ;

__attribute__((used)) static void
mpt_schedule_raid_refresh(struct mpt_softc *mpt)
{

 callout_reset(&mpt->raid_timer, MPT_RAID_SYNC_REPORT_INTERVAL,
        mpt_raid_timer, mpt);
}
