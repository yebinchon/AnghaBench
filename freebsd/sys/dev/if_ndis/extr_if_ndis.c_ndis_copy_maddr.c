
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sockaddr_dl {int dummy; } ;
struct mclist_ctx {scalar_t__ mclistsz; scalar_t__ mclist; } ;


 scalar_t__ ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 int bcopy (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static u_int
ndis_copy_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct mclist_ctx *ctx = arg;

 if (cnt < ctx->mclistsz)
  bcopy(LLADDR(sdl), ctx->mclist + (ETHER_ADDR_LEN * cnt),
      ETHER_ADDR_LEN);
 return (1);
}
