
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ link_ok; } ;
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_7__ {scalar_t__ offset; } ;
struct port_info {struct adapter* adapter; int port_id; TYPE_2__ link_config; TYPE_4__ phy; TYPE_3__ mac; int link_check_task; int link_check_ch; struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;
struct adapter {scalar_t__ open_device_map; int tq; int tick_task; int slow_intr_task; } ;
struct TYPE_5__ {int (* power_down ) (TYPE_4__*,int) ;} ;


 int ADAPTER_LOCK_ASSERT_NOTOWNED (struct adapter*) ;
 scalar_t__ A_XGM_RXFIFO_CFG ;
 scalar_t__ A_XGM_TXFIFO_CFG ;
 scalar_t__ A_XGM_TX_CFG ;
 int DELAY (int) ;
 int F_TXFIFO_EMPTY ;
 int F_TXPAUSEEN ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int MAC_DIRECTION_RX ;
 int M_RXFIFOPAUSEHWM ;
 int PORT_LOCK (struct port_info*) ;
 int PORT_UNLOCK (struct port_info*) ;
 int V_RXFIFOPAUSEHWM (int ) ;
 int callout_drain (int *) ;
 int clrbit (scalar_t__*,int ) ;
 int cxgb_down (struct adapter*) ;
 int stub1 (TYPE_4__*,int) ;
 int t3_mac_disable (TYPE_3__*,int ) ;
 int t3_os_link_changed (struct adapter*,int ,int ,int ,int ,int ,int ) ;
 int t3_port_intr_disable (struct adapter*,int ) ;
 int t3_set_reg_field (struct adapter*,scalar_t__,int ,int ) ;
 int t3_wait_op_done (struct adapter*,scalar_t__,int ,int,int,int) ;
 int taskqueue_drain (int ,int *) ;

__attribute__((used)) static int
cxgb_uninit_synchronized(struct port_info *pi)
{
 struct adapter *sc = pi->adapter;
 struct ifnet *ifp = pi->ifp;




 ADAPTER_LOCK_ASSERT_NOTOWNED(sc);
 clrbit(&sc->open_device_map, pi->port_id);
 t3_port_intr_disable(sc, pi->port_id);
 taskqueue_drain(sc->tq, &sc->slow_intr_task);
 taskqueue_drain(sc->tq, &sc->tick_task);

 callout_drain(&pi->link_check_ch);
 taskqueue_drain(sc->tq, &pi->link_check_task);

 PORT_LOCK(pi);
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);


 t3_set_reg_field(sc, A_XGM_TX_CFG + pi->mac.offset, F_TXPAUSEEN, 0);


 t3_set_reg_field(sc, A_XGM_RXFIFO_CFG + pi->mac.offset,
    V_RXFIFOPAUSEHWM(M_RXFIFOPAUSEHWM), 0);

 DELAY(100 * 1000);


 t3_wait_op_done(sc, A_XGM_TXFIFO_CFG + pi->mac.offset,
   F_TXFIFO_EMPTY, 1, 20, 5);

 DELAY(100 * 1000);
 t3_mac_disable(&pi->mac, MAC_DIRECTION_RX);

 pi->phy.ops->power_down(&pi->phy, 1);

 PORT_UNLOCK(pi);

 pi->link_config.link_ok = 0;
 t3_os_link_changed(sc, pi->port_id, 0, 0, 0, 0, 0);

 if (sc->open_device_map == 0)
  cxgb_down(pi->adapter);

 return (0);
}
