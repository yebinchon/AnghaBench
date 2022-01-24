#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cgem_softc {int net_ctl_shadow; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgem_softc*) ; 
 int /*<<< orphan*/  CGEM_HASH_BOT ; 
 int /*<<< orphan*/  CGEM_HASH_TOP ; 
 int CGEM_INTR_ALL ; 
 int /*<<< orphan*/  CGEM_INTR_DIS ; 
 int /*<<< orphan*/  CGEM_NET_CFG ; 
 int CGEM_NET_CFG_DBUS_WIDTH_32 ; 
 int CGEM_NET_CFG_MDC_CLK_DIV_64 ; 
 int /*<<< orphan*/  CGEM_NET_CTRL ; 
 int CGEM_NET_CTRL_CLR_STAT_REGS ; 
 int CGEM_NET_CTRL_MGMT_PORT_EN ; 
 int /*<<< orphan*/  CGEM_RX_QBAR ; 
 int /*<<< orphan*/  CGEM_RX_STAT ; 
 int CGEM_RX_STAT_ALL ; 
 int /*<<< orphan*/  CGEM_TX_QBAR ; 
 int /*<<< orphan*/  CGEM_TX_STAT ; 
 int CGEM_TX_STAT_ALL ; 
 int /*<<< orphan*/  FUNC1 (struct cgem_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct cgem_softc *sc)
{

	FUNC0(sc);

	FUNC1(sc, CGEM_NET_CTRL, 0);
	FUNC1(sc, CGEM_NET_CFG, 0);
	FUNC1(sc, CGEM_NET_CTRL, CGEM_NET_CTRL_CLR_STAT_REGS);
	FUNC1(sc, CGEM_TX_STAT, CGEM_TX_STAT_ALL);
	FUNC1(sc, CGEM_RX_STAT, CGEM_RX_STAT_ALL);
	FUNC1(sc, CGEM_INTR_DIS, CGEM_INTR_ALL);
	FUNC1(sc, CGEM_HASH_BOT, 0);
	FUNC1(sc, CGEM_HASH_TOP, 0);
	FUNC1(sc, CGEM_TX_QBAR, 0);	/* manual says do this. */
	FUNC1(sc, CGEM_RX_QBAR, 0);

	/* Get management port running even if interface is down. */
	FUNC1(sc, CGEM_NET_CFG,
	    CGEM_NET_CFG_DBUS_WIDTH_32 |
	    CGEM_NET_CFG_MDC_CLK_DIV_64);

	sc->net_ctl_shadow = CGEM_NET_CTRL_MGMT_PORT_EN;
	FUNC1(sc, CGEM_NET_CTRL, sc->net_ctl_shadow);
}