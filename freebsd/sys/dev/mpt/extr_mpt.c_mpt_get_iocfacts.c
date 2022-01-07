
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mpt_softc {int dummy; } ;
struct TYPE_4__ {int MsgContext; int Function; } ;
typedef int MSG_IOC_FACTS_REPLY ;
typedef TYPE_1__ MSG_IOC_FACTS ;


 int MPI_FUNCTION_IOC_FACTS ;
 int MPT_REPLY_HANDLER_HANDSHAKE ;
 int htole32 (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int mpt_recv_handshake_reply (struct mpt_softc*,int,int *) ;
 int mpt_send_handshake_cmd (struct mpt_softc*,int,TYPE_1__*) ;

__attribute__((used)) static int
mpt_get_iocfacts(struct mpt_softc *mpt, MSG_IOC_FACTS_REPLY *freplp)
{
 MSG_IOC_FACTS f_req;
 int error;

 memset(&f_req, 0, sizeof f_req);
 f_req.Function = MPI_FUNCTION_IOC_FACTS;
 f_req.MsgContext = htole32(MPT_REPLY_HANDLER_HANDSHAKE);
 error = mpt_send_handshake_cmd(mpt, sizeof f_req, &f_req);
 if (error) {
  return(error);
 }
 error = mpt_recv_handshake_reply(mpt, sizeof (*freplp), freplp);
 return (error);
}
