
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct mxge_add_maddr_ctx {scalar_t__ error; int sc; } ;
struct TYPE_3__ {void* data1; void* data0; } ;
typedef TYPE_1__ mxge_cmd_t ;


 scalar_t__ LLADDR (struct sockaddr_dl*) ;
 int MXGEFW_JOIN_MULTICAST_GROUP ;
 int bcopy (scalar_t__,void**,int) ;
 void* htonl (void*) ;
 scalar_t__ mxge_send_cmd (int ,int ,TYPE_1__*) ;

__attribute__((used)) static u_int
mxge_add_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct mxge_add_maddr_ctx *ctx = arg;
 mxge_cmd_t cmd;

 if (ctx->error != 0)
  return (0);
 bcopy(LLADDR(sdl), &cmd.data0, 4);
 bcopy(LLADDR(sdl) + 4, &cmd.data1, 2);
 cmd.data0 = htonl(cmd.data0);
 cmd.data1 = htonl(cmd.data1);

 ctx->error = mxge_send_cmd(ctx->sc, MXGEFW_JOIN_MULTICAST_GROUP, &cmd);

 return (1);
}
