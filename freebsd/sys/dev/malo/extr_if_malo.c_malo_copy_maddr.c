
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct malo_copy_maddr_ctx {int nmc; scalar_t__ macs; } ;


 int IEEE80211_ADDR_COPY (scalar_t__,int ) ;
 int IEEE80211_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 int MALO_HAL_MCAST_MAX ;

__attribute__((used)) static u_int
malo_copy_maddr(void *arg, struct sockaddr_dl *sdl, u_int nmc)
{
 struct malo_copy_maddr_ctx *ctx = arg;

 if (ctx->nmc == MALO_HAL_MCAST_MAX)
  return (0);

 IEEE80211_ADDR_COPY(ctx->macs + (ctx->nmc * IEEE80211_ADDR_LEN),
     LLADDR(sdl));
 ctx->nmc++;

 return (1);
}
