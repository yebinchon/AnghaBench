#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct t3_rx_mode {TYPE_1__* port; } ;
struct t3_mcaddr_ctx {int hash_lo; int hash_hi; struct cmac* mac; } ;
struct cmac {unsigned int offset; int promisc_map; int ext_port; scalar_t__ multiport; int /*<<< orphan*/ * adapter; } ;
typedef  int /*<<< orphan*/  adapter_t ;
struct TYPE_2__ {int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 scalar_t__ A_XGM_RX_CFG ; 
 scalar_t__ A_XGM_RX_HASH_HIGH ; 
 scalar_t__ A_XGM_RX_HASH_LOW ; 
 int /*<<< orphan*/  F_COPYALLFRAMES ; 
 scalar_t__ FUNC0 (struct t3_rx_mode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct t3_mcaddr_ctx*) ; 
 scalar_t__ FUNC2 (struct t3_rx_mode*) ; 
 int /*<<< orphan*/  t3_hash_maddr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 

int FUNC5(struct cmac *mac, struct t3_rx_mode *rm)
{
	struct t3_mcaddr_ctx ctx;
	adapter_t *adap = mac->adapter;
	unsigned int oft = mac->offset;

	if (FUNC2(rm))
		mac->promisc_map |= 1 << mac->ext_port;
	else
		mac->promisc_map &= ~(1 << mac->ext_port);
	FUNC3(adap, A_XGM_RX_CFG + oft, F_COPYALLFRAMES,
			 mac->promisc_map ? F_COPYALLFRAMES : 0);

	if (FUNC0(rm) || mac->multiport)
		ctx.hash_lo = ctx.hash_hi = 0xffffffff;
	else {
		ctx.mac = mac;
		ctx.hash_lo = ctx.hash_hi = 0;
		FUNC1(rm->port->ifp, t3_hash_maddr, &ctx);
	}

	FUNC4(adap, A_XGM_RX_HASH_LOW + oft, ctx.hash_lo);
	FUNC4(adap, A_XGM_RX_HASH_HIGH + oft, ctx.hash_hi);
	return 0;
}