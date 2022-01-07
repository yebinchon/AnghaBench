
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u16 ;
struct mpr_softc {int dummy; } ;
struct TYPE_2__ {int IOCLogInfo; int IOCStatus; } ;
typedef TYPE_1__ MPI2DefaultReply_t ;


 int MPI2_IOCSTATUS_FLAG_LOG_INFO_AVAILABLE ;
 int le16toh (int ) ;
 int le32toh (int ) ;
 int mpr_sas_log_info (struct mpr_softc*,int ) ;

__attribute__((used)) static void
mpr_display_reply_info(struct mpr_softc *sc, uint8_t *reply)
{
 MPI2DefaultReply_t *mpi_reply;
 u16 sc_status;

 mpi_reply = (MPI2DefaultReply_t*)reply;
 sc_status = le16toh(mpi_reply->IOCStatus);
 if (sc_status & MPI2_IOCSTATUS_FLAG_LOG_INFO_AVAILABLE)
  mpr_sas_log_info(sc, le32toh(mpi_reply->IOCLogInfo));
}
