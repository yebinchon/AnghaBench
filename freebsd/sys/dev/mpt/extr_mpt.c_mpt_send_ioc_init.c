
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct mpt_softc {int dummy; } ;
struct TYPE_4__ {int MaxBuses; int MsgContext; void* ReplyFrameSize; void* HeaderVersion; void* MsgVersion; scalar_t__ MaxDevices; int Function; int WhoInit; } ;
typedef int MSG_IOC_INIT_REPLY ;
typedef TYPE_1__ MSG_IOC_INIT ;


 int MPI_FUNCTION_IOC_INIT ;
 int MPI_HEADER_VERSION ;
 int MPI_VERSION ;
 int MPT_REPLY_HANDLER_HANDSHAKE ;
 int MPT_REPLY_SIZE ;
 void* htole16 (int ) ;
 int htole32 (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int mpt_recv_handshake_reply (struct mpt_softc*,int,int *) ;
 int mpt_send_handshake_cmd (struct mpt_softc*,int,TYPE_1__*) ;

__attribute__((used)) static int
mpt_send_ioc_init(struct mpt_softc *mpt, uint32_t who)
{
 int error = 0;
 MSG_IOC_INIT init;
 MSG_IOC_INIT_REPLY reply;

 memset(&init, 0, sizeof init);
 init.WhoInit = who;
 init.Function = MPI_FUNCTION_IOC_INIT;
 init.MaxDevices = 0;
 init.MaxBuses = 16;

 init.MsgVersion = htole16(MPI_VERSION);
 init.HeaderVersion = htole16(MPI_HEADER_VERSION);
 init.ReplyFrameSize = htole16(MPT_REPLY_SIZE);
 init.MsgContext = htole32(MPT_REPLY_HANDLER_HANDSHAKE);

 if ((error = mpt_send_handshake_cmd(mpt, sizeof init, &init)) != 0) {
  return(error);
 }

 error = mpt_recv_handshake_reply(mpt, sizeof reply, &reply);
 return (error);
}
