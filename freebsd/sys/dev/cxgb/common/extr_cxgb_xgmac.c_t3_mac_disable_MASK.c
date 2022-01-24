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
struct cmac {scalar_t__ offset; int /*<<< orphan*/ * adapter; scalar_t__ txen; int /*<<< orphan*/  ext_port; scalar_t__ multiport; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 scalar_t__ A_XGM_RESET_CTRL ; 
 scalar_t__ A_XGM_RX_CTRL ; 
 scalar_t__ A_XGM_TX_CTRL ; 
 int /*<<< orphan*/  F_PCS_RESET_ ; 
 int MAC_DIRECTION_RX ; 
 int MAC_DIRECTION_TX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC4 (struct cmac*) ; 

int FUNC5(struct cmac *mac, int which)
{
	adapter_t *adap = mac->adapter;

	if (mac->multiport)
		return FUNC2(adap, mac->ext_port, which);

	if (which & MAC_DIRECTION_TX) {
		FUNC3(adap, A_XGM_TX_CTRL + mac->offset, 0);
		mac->txen = 0;
	}
	if (which & MAC_DIRECTION_RX) {
		int val = FUNC4(mac);

		FUNC1(mac->adapter, A_XGM_RESET_CTRL + mac->offset,
				 F_PCS_RESET_, 0);
		FUNC0(100);
		FUNC3(adap, A_XGM_RX_CTRL + mac->offset, 0);
		FUNC3(mac->adapter, A_XGM_RESET_CTRL + mac->offset, val);
	}
	return 0;
}