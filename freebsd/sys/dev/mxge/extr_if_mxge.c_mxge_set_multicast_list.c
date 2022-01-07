
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mxge_add_maddr_ctx {int error; TYPE_1__* sc; } ;
struct ifnet {int if_flags; } ;
struct TYPE_4__ {int dev; scalar_t__ adopted_rx_filter_bug; int fw_multicast_support; struct ifnet* ifp; } ;
typedef TYPE_1__ mxge_softc_t ;
typedef int mxge_cmd_t ;


 int IFF_ALLMULTI ;
 int MXGEFW_DISABLE_ALLMULTI ;
 int MXGEFW_ENABLE_ALLMULTI ;
 int MXGEFW_LEAVE_ALL_MULTICAST_GROUPS ;
 int device_printf (int ,char*,int) ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct mxge_add_maddr_ctx*) ;
 int mxge_add_maddr ;
 int mxge_send_cmd (TYPE_1__*,int ,int *) ;

__attribute__((used)) static void
mxge_set_multicast_list(mxge_softc_t *sc)
{
 struct mxge_add_maddr_ctx ctx;
 struct ifnet *ifp = sc->ifp;
 mxge_cmd_t cmd;
 int err;


 if (!sc->fw_multicast_support)
  return;


 err = mxge_send_cmd(sc, MXGEFW_ENABLE_ALLMULTI, &cmd);
 if (err != 0) {
  device_printf(sc->dev, "Failed MXGEFW_ENABLE_ALLMULTI,"
         " error status: %d\n", err);
  return;
 }

 if (sc->adopted_rx_filter_bug)
  return;

 if (ifp->if_flags & IFF_ALLMULTI)

  return;



 err = mxge_send_cmd(sc, MXGEFW_LEAVE_ALL_MULTICAST_GROUPS, &cmd);
 if (err != 0) {
  device_printf(sc->dev,
         "Failed MXGEFW_LEAVE_ALL_MULTICAST_GROUPS"
         ", error status: %d\n", err);
  return;
 }


 ctx.sc = sc;
 ctx.error = 0;
 if_foreach_llmaddr(ifp, mxge_add_maddr, &ctx);
 if (ctx.error != 0) {
  device_printf(sc->dev, "Failed MXGEFW_JOIN_MULTICAST_GROUP, "
      "error status:" "%d\t", ctx.error);

  return;
 }


 err = mxge_send_cmd(sc, MXGEFW_DISABLE_ALLMULTI, &cmd);
 if (err != 0) {
  device_printf(sc->dev, "Failed MXGEFW_DISABLE_ALLMULTI"
         ", error status: %d\n", err);
 }
}
