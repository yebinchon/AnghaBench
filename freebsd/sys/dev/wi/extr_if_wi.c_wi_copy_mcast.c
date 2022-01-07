
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int * wi_mcast; } ;
struct wi_mcast_ctx {int mcnt; TYPE_1__ mlist; } ;
struct sockaddr_dl {int dummy; } ;


 int IEEE80211_ADDR_COPY (int *,int ) ;
 int LLADDR (struct sockaddr_dl*) ;

__attribute__((used)) static u_int
wi_copy_mcast(void *arg, struct sockaddr_dl *sdl, u_int count)
{
 struct wi_mcast_ctx *ctx = arg;

 if (ctx->mcnt >= 16)
  return (0);
 IEEE80211_ADDR_COPY(&ctx->mlist.wi_mcast[ctx->mcnt++], LLADDR(sdl));

 return (1);
}
