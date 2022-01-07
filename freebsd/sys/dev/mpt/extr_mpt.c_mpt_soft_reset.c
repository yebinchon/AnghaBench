
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int dummy; } ;


 int MPI_DOORBELL_FUNCTION_SHIFT ;
 int MPI_FUNCTION_IOC_MESSAGE_UNIT_RESET ;
 scalar_t__ MPT_DB_IS_IN_USE (int ) ;
 int MPT_DB_STATE_READY ;
 scalar_t__ MPT_DB_STATE_RUNNING ;
 int MPT_FAIL ;
 int MPT_OFFSET_DOORBELL ;
 scalar_t__ MPT_OK ;
 int MPT_PRT_DEBUG ;
 scalar_t__ MPT_STATE (int ) ;
 int mpt_lprt (struct mpt_softc*,int ,char*) ;
 int mpt_prt (struct mpt_softc*,char*) ;
 int mpt_rd_db (struct mpt_softc*) ;
 scalar_t__ mpt_wait_db_ack (struct mpt_softc*) ;
 scalar_t__ mpt_wait_state (struct mpt_softc*,int ) ;
 int mpt_write (struct mpt_softc*,int ,int) ;

__attribute__((used)) static int
mpt_soft_reset(struct mpt_softc *mpt)
{

 mpt_lprt(mpt, MPT_PRT_DEBUG, "soft reset\n");


 if (MPT_STATE(mpt_rd_db(mpt)) != MPT_DB_STATE_RUNNING) {
  mpt_prt(mpt, "soft reset failed: device not running\n");
  return (MPT_FAIL);
 }





 if (MPT_DB_IS_IN_USE(mpt_rd_db(mpt))) {
  mpt_prt(mpt, "soft reset failed: doorbell wedged\n");
  return (MPT_FAIL);
 }


 mpt_write(mpt, MPT_OFFSET_DOORBELL,
     MPI_FUNCTION_IOC_MESSAGE_UNIT_RESET << MPI_DOORBELL_FUNCTION_SHIFT);
 if (mpt_wait_db_ack(mpt) != MPT_OK) {
  mpt_prt(mpt, "soft reset failed: ack timeout\n");
  return (MPT_FAIL);
 }


 if (mpt_wait_state(mpt, MPT_DB_STATE_READY) != MPT_OK) {
  mpt_prt(mpt, "soft reset failed: device did not restart\n");
  return (MPT_FAIL);
 }

 return MPT_OK;
}
