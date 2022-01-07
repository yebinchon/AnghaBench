
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgem_softc {int net_ctl_shadow; } ;


 int CGEM_ASSERT_LOCKED (struct cgem_softc*) ;
 int CGEM_HASH_BOT ;
 int CGEM_HASH_TOP ;
 int CGEM_INTR_ALL ;
 int CGEM_INTR_DIS ;
 int CGEM_NET_CFG ;
 int CGEM_NET_CFG_DBUS_WIDTH_32 ;
 int CGEM_NET_CFG_MDC_CLK_DIV_64 ;
 int CGEM_NET_CTRL ;
 int CGEM_NET_CTRL_CLR_STAT_REGS ;
 int CGEM_NET_CTRL_MGMT_PORT_EN ;
 int CGEM_RX_QBAR ;
 int CGEM_RX_STAT ;
 int CGEM_RX_STAT_ALL ;
 int CGEM_TX_QBAR ;
 int CGEM_TX_STAT ;
 int CGEM_TX_STAT_ALL ;
 int WR4 (struct cgem_softc*,int ,int) ;

__attribute__((used)) static void
cgem_reset(struct cgem_softc *sc)
{

 CGEM_ASSERT_LOCKED(sc);

 WR4(sc, CGEM_NET_CTRL, 0);
 WR4(sc, CGEM_NET_CFG, 0);
 WR4(sc, CGEM_NET_CTRL, CGEM_NET_CTRL_CLR_STAT_REGS);
 WR4(sc, CGEM_TX_STAT, CGEM_TX_STAT_ALL);
 WR4(sc, CGEM_RX_STAT, CGEM_RX_STAT_ALL);
 WR4(sc, CGEM_INTR_DIS, CGEM_INTR_ALL);
 WR4(sc, CGEM_HASH_BOT, 0);
 WR4(sc, CGEM_HASH_TOP, 0);
 WR4(sc, CGEM_TX_QBAR, 0);
 WR4(sc, CGEM_RX_QBAR, 0);


 WR4(sc, CGEM_NET_CFG,
     CGEM_NET_CFG_DBUS_WIDTH_32 |
     CGEM_NET_CFG_MDC_CLK_DIV_64);

 sc->net_ctl_shadow = CGEM_NET_CTRL_MGMT_PORT_EN;
 WR4(sc, CGEM_NET_CTRL, sc->net_ctl_shadow);
}
