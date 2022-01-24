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
typedef  int /*<<< orphan*/  uint32_t ;
struct cmac {scalar_t__ offset; } ;
struct port_info {struct cmac mac; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 scalar_t__ A_XGM_INT_STATUS ; 
 scalar_t__ A_XGM_RX_CTRL ; 
 int F_LINKFAULTCHANGE ; 
 int /*<<< orphan*/  F_RXEN ; 
 struct port_info* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cmac*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(adapter_t *adapter, int port_id)
{
	struct port_info *pi = FUNC0(adapter, port_id);
	struct cmac *mac = &pi->mac;
	uint32_t rx_cfg, rx_hash_high, rx_hash_low;
	int link_fault;

	/* stop rx */
	FUNC1(mac, &rx_cfg, &rx_hash_high, &rx_hash_low);
	FUNC4(adapter, A_XGM_RX_CTRL + mac->offset, 0);

	/* clear status and make sure intr is enabled */
	(void) FUNC3(adapter, A_XGM_INT_STATUS + mac->offset);
	FUNC5(adapter, port_id);

	/* restart rx */
	FUNC4(adapter, A_XGM_RX_CTRL + mac->offset, F_RXEN);
	FUNC2(mac, rx_cfg, rx_hash_high, rx_hash_low);

	link_fault = FUNC3(adapter, A_XGM_INT_STATUS + mac->offset);
	return (link_fault & F_LINKFAULTCHANGE ? 1 : 0);
}