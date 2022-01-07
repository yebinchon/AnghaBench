
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct mps_softc {int dummy; } ;
struct TYPE_5__ {scalar_t__ td_no_sleeping; } ;
struct TYPE_4__ {int MsgLength; } ;
typedef TYPE_1__ MPI2_DEFAULT_REPLY ;


 int CAN_SLEEP ;
 int EBUSY ;
 int ENXIO ;
 int MIN (int,int) ;
 int MPI2_DOORBELL_ADD_DWORDS_SHIFT ;
 int MPI2_DOORBELL_DATA_MASK ;
 int MPI2_DOORBELL_FUNCTION_SHIFT ;
 int MPI2_DOORBELL_OFFSET ;
 int MPI2_DOORBELL_USED ;
 int MPI2_FUNCTION_HANDSHAKE ;
 int MPI2_HOST_INTERRUPT_STATUS_OFFSET ;
 int MPS_ERROR ;
 int MPS_FAULT ;
 int NO_SLEEP ;
 TYPE_3__* curthread ;
 int htole32 (int ) ;
 int mps_dprint (struct mps_softc*,int ,char*,...) ;
 int mps_regread (struct mps_softc*,int ) ;
 int mps_regwrite (struct mps_softc*,int ,int) ;
 scalar_t__ mps_wait_db_ack (struct mps_softc*,int,int) ;
 scalar_t__ mps_wait_db_int (struct mps_softc*) ;

__attribute__((used)) static int
mps_request_sync(struct mps_softc *sc, void *req, MPI2_DEFAULT_REPLY *reply,
    int req_sz, int reply_sz, int timeout)
{
 uint32_t *data32;
 uint16_t *data16;
 int i, count, ioc_sz, residual;
 int sleep_flags = CAN_SLEEP;

 if (curthread->td_no_sleeping != 0)
  sleep_flags = NO_SLEEP;


 mps_regwrite(sc, MPI2_HOST_INTERRUPT_STATUS_OFFSET, 0x0);


 if (mps_regread(sc, MPI2_DOORBELL_OFFSET) & MPI2_DOORBELL_USED)
  return (EBUSY);





 count = (req_sz + 3) / 4;
 mps_regwrite(sc, MPI2_DOORBELL_OFFSET,
     (MPI2_FUNCTION_HANDSHAKE << MPI2_DOORBELL_FUNCTION_SHIFT) |
     (count << MPI2_DOORBELL_ADD_DWORDS_SHIFT));


 if (mps_wait_db_int(sc) ||
     (mps_regread(sc, MPI2_DOORBELL_OFFSET) & MPI2_DOORBELL_USED) == 0) {
  mps_dprint(sc, MPS_FAULT, "Doorbell failed to activate\n");
  return (ENXIO);
 }
 mps_regwrite(sc, MPI2_HOST_INTERRUPT_STATUS_OFFSET, 0x0);
 if (mps_wait_db_ack(sc, 5, sleep_flags) != 0) {
  mps_dprint(sc, MPS_FAULT, "Doorbell handshake failed\n");
  return (ENXIO);
 }



 data32 = (uint32_t *)req;
 for (i = 0; i < count; i++) {
  mps_regwrite(sc, MPI2_DOORBELL_OFFSET, htole32(data32[i]));
  if (mps_wait_db_ack(sc, 5, sleep_flags) != 0) {
   mps_dprint(sc, MPS_FAULT,
       "Timeout while writing doorbell\n");
   return (ENXIO);
  }
 }






 data16 = (uint16_t *)reply;
 if (mps_wait_db_int(sc) != 0) {
  mps_dprint(sc, MPS_FAULT, "Timeout reading doorbell 0\n");
  return (ENXIO);
 }
 data16[0] =
     mps_regread(sc, MPI2_DOORBELL_OFFSET) & MPI2_DOORBELL_DATA_MASK;
 mps_regwrite(sc, MPI2_HOST_INTERRUPT_STATUS_OFFSET, 0x0);
 if (mps_wait_db_int(sc) != 0) {
  mps_dprint(sc, MPS_FAULT, "Timeout reading doorbell 1\n");
  return (ENXIO);
 }
 data16[1] =
     mps_regread(sc, MPI2_DOORBELL_OFFSET) & MPI2_DOORBELL_DATA_MASK;
 mps_regwrite(sc, MPI2_HOST_INTERRUPT_STATUS_OFFSET, 0x0);


 ioc_sz = reply->MsgLength;






 residual = 0;
 count = MIN((reply_sz / 4), ioc_sz) * 2;
 if (count < ioc_sz * 2) {
  residual = ioc_sz * 2 - count;
  mps_dprint(sc, MPS_ERROR, "Driver error, throwing away %d "
      "residual message words\n", residual);
 }

 for (i = 2; i < count; i++) {
  if (mps_wait_db_int(sc) != 0) {
   mps_dprint(sc, MPS_FAULT,
       "Timeout reading doorbell %d\n", i);
   return (ENXIO);
  }
  data16[i] = mps_regread(sc, MPI2_DOORBELL_OFFSET) &
      MPI2_DOORBELL_DATA_MASK;
  mps_regwrite(sc, MPI2_HOST_INTERRUPT_STATUS_OFFSET, 0x0);
 }






 while (residual--) {
  if (mps_wait_db_int(sc) != 0) {
   mps_dprint(sc, MPS_FAULT,
       "Timeout reading doorbell\n");
   return (ENXIO);
  }
  (void)mps_regread(sc, MPI2_DOORBELL_OFFSET);
  mps_regwrite(sc, MPI2_HOST_INTERRUPT_STATUS_OFFSET, 0x0);
 }


 if (mps_wait_db_int(sc) != 0) {
  mps_dprint(sc, MPS_FAULT, "Timeout waiting to exit doorbell\n");
  return (ENXIO);
 }
 if (mps_regread(sc, MPI2_DOORBELL_OFFSET) & MPI2_DOORBELL_USED)
  mps_dprint(sc, MPS_FAULT, "Warning, doorbell still active\n");
 mps_regwrite(sc, MPI2_HOST_INTERRUPT_STATUS_OFFSET, 0x0);

 return (0);
}
