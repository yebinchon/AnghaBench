
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct sk_if_softc {struct ifnet* sk_ifp; } ;
struct TYPE_2__ {int member_1; int member_0; } ;
struct sk_add_maddr_genesis_ctx {int mode; int* hashes; TYPE_1__ member_1; struct sk_if_softc* member_0; } ;
struct ifnet {int if_flags; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int SK_IF_LOCK_ASSERT (struct sk_if_softc*) ;
 int SK_XM_READ_4 (struct sk_if_softc*,int ) ;
 int SK_XM_WRITE_4 (struct sk_if_softc*,int ,int) ;
 int XM_MAR0 ;
 int XM_MAR2 ;
 int XM_MODE ;
 int XM_MODE_RX_PROMISC ;
 int XM_MODE_RX_USE_HASH ;
 int XM_MODE_RX_USE_PERFECT ;
 int XM_RXFILT_MAX ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct sk_add_maddr_genesis_ctx*) ;
 int sk_add_maddr_genesis ;
 int sk_setfilt (struct sk_if_softc*,int *,int) ;

__attribute__((used)) static void
sk_rxfilter_genesis(struct sk_if_softc *sc_if)
{
 struct ifnet *ifp = sc_if->sk_ifp;
 struct sk_add_maddr_genesis_ctx ctx = { sc_if, { 0, 0 } };
 int i;
 u_int16_t dummy[] = { 0, 0, 0 };

 SK_IF_LOCK_ASSERT(sc_if);

 ctx.mode = SK_XM_READ_4(sc_if, XM_MODE);
 ctx.mode &= ~(XM_MODE_RX_PROMISC | XM_MODE_RX_USE_HASH |
     XM_MODE_RX_USE_PERFECT);

 for (i = 1; i < XM_RXFILT_MAX; i++)
  sk_setfilt(sc_if, dummy, i);


 if (ifp->if_flags & IFF_ALLMULTI || ifp->if_flags & IFF_PROMISC) {
  if (ifp->if_flags & IFF_ALLMULTI)
   ctx.mode |= XM_MODE_RX_USE_HASH;
  if (ifp->if_flags & IFF_PROMISC)
   ctx.mode |= XM_MODE_RX_PROMISC;
  ctx.hashes[0] = 0xFFFFFFFF;
  ctx.hashes[1] = 0xFFFFFFFF;
 } else

  if_foreach_llmaddr(ifp, sk_add_maddr_genesis, &ctx);

 SK_XM_WRITE_4(sc_if, XM_MODE, ctx.mode);
 SK_XM_WRITE_4(sc_if, XM_MAR0, ctx.hashes[0]);
 SK_XM_WRITE_4(sc_if, XM_MAR2, ctx.hashes[1]);
}
