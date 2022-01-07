
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int16_t ;
struct mpt_softc {scalar_t__ verbose; } ;
struct TYPE_3__ {size_t MsgLength; scalar_t__ Function; int IOCStatus; } ;
typedef TYPE_1__ MSG_DEFAULT_REPLY ;


 int ETIMEDOUT ;
 scalar_t__ MPI_FUNCTION_IOC_FACTS ;
 int MPI_IOCSTATUS_MASK ;
 int MPI_IOCSTATUS_SUCCESS ;
 int MPT_DB_DATA_MASK ;
 int MPT_FAIL ;
 int MPT_OFFSET_DOORBELL ;
 int MPT_OFFSET_INTR_STATUS ;
 scalar_t__ MPT_OK ;
 scalar_t__ MPT_PRT_TRACE ;
 void* le16toh (int) ;
 int mpt_print_reply (TYPE_1__*) ;
 int mpt_prt (struct mpt_softc*,char*,...) ;
 int mpt_read (struct mpt_softc*,int ) ;
 scalar_t__ mpt_wait_db_int (struct mpt_softc*) ;
 int mpt_write (struct mpt_softc*,int ,int ) ;

int
mpt_recv_handshake_reply(struct mpt_softc *mpt, size_t reply_len, void *reply)
{
 int left, reply_left;
 u_int16_t *data16;
 uint32_t data;
 MSG_DEFAULT_REPLY *hdr;


 reply_len >>= 1;
 data16 = (u_int16_t *)reply;

 hdr = (MSG_DEFAULT_REPLY *)reply;


 if (mpt_wait_db_int(mpt) != MPT_OK) {
  mpt_prt(mpt, "mpt_recv_handshake_cmd timeout1\n");
  return ETIMEDOUT;
 }
 data = mpt_read(mpt, MPT_OFFSET_DOORBELL);
 *data16++ = le16toh(data & MPT_DB_DATA_MASK);
 mpt_write(mpt, MPT_OFFSET_INTR_STATUS, 0);


 if (mpt_wait_db_int(mpt) != MPT_OK) {
  mpt_prt(mpt, "mpt_recv_handshake_cmd timeout2\n");
  return ETIMEDOUT;
 }
 data = mpt_read(mpt, MPT_OFFSET_DOORBELL);
 *data16++ = le16toh(data & MPT_DB_DATA_MASK);
 mpt_write(mpt, MPT_OFFSET_INTR_STATUS, 0);





 if ((reply_len >> 1) != hdr->MsgLength &&
     (hdr->Function != MPI_FUNCTION_IOC_FACTS)){
  mpt_prt(mpt, "reply length does not match message length: "
   "got %x; expected %zx for function %x\n",
   hdr->MsgLength << 2, reply_len << 1, hdr->Function);
 }


 left = (hdr->MsgLength << 1) - 2;
 reply_left = reply_len - 2;
 while (left--) {
  if (mpt_wait_db_int(mpt) != MPT_OK) {
   mpt_prt(mpt, "mpt_recv_handshake_cmd timeout3\n");
   return ETIMEDOUT;
  }
  data = mpt_read(mpt, MPT_OFFSET_DOORBELL);
  if (reply_left-- > 0)
   *data16++ = le16toh(data & MPT_DB_DATA_MASK);
  mpt_write(mpt, MPT_OFFSET_INTR_STATUS, 0);
 }


 if (mpt_wait_db_int(mpt) != MPT_OK) {
  mpt_prt(mpt, "mpt_recv_handshake_cmd timeout4\n");
  return ETIMEDOUT;
 }
 mpt_write(mpt, MPT_OFFSET_INTR_STATUS, 0);

 if ((hdr->IOCStatus & MPI_IOCSTATUS_MASK) != MPI_IOCSTATUS_SUCCESS) {
  if (mpt->verbose >= MPT_PRT_TRACE)
   mpt_print_reply(hdr);
  return (MPT_FAIL | hdr->IOCStatus);
 }

 return (0);
}
