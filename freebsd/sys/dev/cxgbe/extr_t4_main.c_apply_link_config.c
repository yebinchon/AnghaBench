
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_config {scalar_t__ requested_aneg; int supported; int requested_fc; int requested_fec; int fc; scalar_t__ link_ok; } ;
struct port_info {int dev; int tx_chan; struct link_config link_cfg; struct adapter* adapter; } ;
struct adapter {int flags; int mbox; } ;


 int ASSERT_SYNCHRONIZED_OP (struct adapter*) ;
 scalar_t__ AUTONEG_ENABLE ;
 int FEC_BASER_RS ;
 int FEC_RS ;
 int FW_EPERM ;
 int FW_PORT_CAP32_ANEG ;
 int FW_PORT_CAP32_FC_RX ;
 int FW_PORT_CAP32_FC_TX ;
 int FW_PORT_CAP32_FEC_BASER_RS ;
 int FW_PORT_CAP32_FEC_RS ;
 int FW_PORT_CAP32_FORCE_PAUSE ;
 int IS_VF ;
 int MPASS (int) ;
 int PAUSE_AUTONEG ;
 int PAUSE_RX ;
 int PAUSE_TX ;
 int PORT_LOCK_ASSERT_OWNED (struct port_info*) ;
 int device_printf (int ,char*,int) ;
 int t4_link_l1cfg (struct adapter*,int ,int ,struct link_config*) ;

__attribute__((used)) static int
apply_link_config(struct port_info *pi)
{
 struct adapter *sc = pi->adapter;
 struct link_config *lc = &pi->link_cfg;
 int rc;
 rc = -t4_link_l1cfg(sc, sc->mbox, pi->tx_chan, lc);
 if (rc != 0) {

  if (!(sc->flags & IS_VF) || rc != FW_EPERM)
   device_printf(pi->dev, "l1cfg failed: %d\n", rc);
 } else {
  if (lc->link_ok && !(lc->requested_fc & PAUSE_AUTONEG))
   lc->fc = lc->requested_fc & (PAUSE_TX | PAUSE_RX);
 }
 return (rc);
}
