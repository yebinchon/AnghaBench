
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct mpt_softc {int dummy; } ;


 int EBUSY ;
 int ETIMEDOUT ;
 size_t MPI_DOORBELL_ADD_DWORDS_SHIFT ;
 size_t MPI_DOORBELL_FUNCTION_SHIFT ;
 size_t MPI_FUNCTION_HANDSHAKE ;
 scalar_t__ MPT_DB_INTR (int ) ;
 scalar_t__ MPT_DB_IS_IN_USE (size_t) ;
 scalar_t__ MPT_DB_STATE_FAULT ;
 scalar_t__ MPT_DB_STATE_READY ;
 scalar_t__ MPT_DB_STATE_RUNNING ;
 int MPT_OFFSET_DOORBELL ;
 int MPT_OFFSET_INTR_STATUS ;
 scalar_t__ MPT_OK ;
 scalar_t__ MPT_STATE (size_t) ;
 int mpt_print_db (size_t) ;
 int mpt_prt (struct mpt_softc*,char*,...) ;
 size_t mpt_rd_db (struct mpt_softc*) ;
 int mpt_rd_intr (struct mpt_softc*) ;
 scalar_t__ mpt_wait_db_ack (struct mpt_softc*) ;
 scalar_t__ mpt_wait_db_int (struct mpt_softc*) ;
 int mpt_write (struct mpt_softc*,int ,size_t) ;
 int mpt_write_stream (struct mpt_softc*,int ,int ) ;

int
mpt_send_handshake_cmd(struct mpt_softc *mpt, size_t len, void *cmd)
{
 int i;
 uint32_t data, *data32;


 data = mpt_rd_db(mpt);
 if ((MPT_STATE(data) != MPT_DB_STATE_READY
   && MPT_STATE(data) != MPT_DB_STATE_RUNNING
   && MPT_STATE(data) != MPT_DB_STATE_FAULT)
  || MPT_DB_IS_IN_USE(data)) {
  mpt_prt(mpt, "handshake aborted - invalid doorbell state\n");
  mpt_print_db(data);
  return (EBUSY);
 }


 len = (len + 3) >> 2;
 data32 = cmd;


 if (MPT_DB_INTR(mpt_rd_intr(mpt)))
  mpt_write(mpt, MPT_OFFSET_INTR_STATUS, 0);





 data = (MPI_FUNCTION_HANDSHAKE << MPI_DOORBELL_FUNCTION_SHIFT) |
     (len << MPI_DOORBELL_ADD_DWORDS_SHIFT);
 mpt_write(mpt, MPT_OFFSET_DOORBELL, data);


 if (mpt_wait_db_int(mpt) != MPT_OK) {
  mpt_prt(mpt, "mpt_send_handshake_cmd: db ignored\n");
  return (ETIMEDOUT);
 }


 mpt_write(mpt, MPT_OFFSET_INTR_STATUS, 0);

 if (mpt_wait_db_ack(mpt) != MPT_OK) {
  mpt_prt(mpt, "mpt_send_handshake_cmd: db ack timed out\n");
  return (ETIMEDOUT);
 }


 for (i = 0; i < len; i++) {
  mpt_write_stream(mpt, MPT_OFFSET_DOORBELL, *data32++);
  if (mpt_wait_db_ack(mpt) != MPT_OK) {
   mpt_prt(mpt,
       "mpt_send_handshake_cmd: timeout @ index %d\n", i);
   return (ETIMEDOUT);
  }
 }
 return MPT_OK;
}
