
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct vi_info {int viid; struct port_info* pi; } ;
struct sockaddr_dl {int dummy; } ;
struct port_info {struct adapter* adapter; } ;
struct mcaddr_ctx {scalar_t__ rc; size_t i; scalar_t__ del; int ** mcaddr; TYPE_1__* ifp; int hash; } ;
struct adapter {int mbox; } ;
struct TYPE_2__ {struct vi_info* if_softc; } ;


 int ETHER_IS_MULTICAST (int *) ;
 size_t FW_MAC_EXACT_CHUNK ;
 int * LLADDR (struct sockaddr_dl*) ;
 int MPASS (int ) ;
 int if_printf (TYPE_1__*,char*,int ,int ,int ,int ,int ,int ,scalar_t__) ;
 scalar_t__ t4_alloc_mac_filt (struct adapter*,int ,int ,scalar_t__,size_t,int **,int *,int *,int ) ;

__attribute__((used)) static u_int
add_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct mcaddr_ctx *ctx = arg;
 struct vi_info *vi = ctx->ifp->if_softc;
 struct port_info *pi = vi->pi;
 struct adapter *sc = pi->adapter;

 if (ctx->rc < 0)
  return (0);

 ctx->mcaddr[ctx->i] = LLADDR(sdl);
 MPASS(ETHER_IS_MULTICAST(ctx->mcaddr[ctx->i]));
 ctx->i++;

 if (ctx->i == FW_MAC_EXACT_CHUNK) {
  ctx->rc = t4_alloc_mac_filt(sc, sc->mbox, vi->viid, ctx->del,
      ctx->i, ctx->mcaddr, ((void*)0), &ctx->hash, 0);
  if (ctx->rc < 0) {
   int j;

   for (j = 0; j < ctx->i; j++) {
    if_printf(ctx->ifp,
        "failed to add mc address"
        " %02x:%02x:%02x:"
        "%02x:%02x:%02x rc=%d\n",
        ctx->mcaddr[j][0], ctx->mcaddr[j][1],
        ctx->mcaddr[j][2], ctx->mcaddr[j][3],
        ctx->mcaddr[j][4], ctx->mcaddr[j][5],
        -ctx->rc);
   }
   return (0);
  }
  ctx->del = 0;
  ctx->i = 0;
 }

 return (1);
}
