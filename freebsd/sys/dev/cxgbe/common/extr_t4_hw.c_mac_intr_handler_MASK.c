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
struct intr_info {char* name; int fatal; int /*<<< orphan*/ * actions; struct intr_details const* details; scalar_t__ flags; void* enable_reg; void* cause_reg; } ;
struct intr_details {int member_0; char* member_1; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  A_MAC_PORT_INT_CAUSE ; 
 int /*<<< orphan*/  A_MAC_PORT_INT_EN ; 
 int /*<<< orphan*/  A_MAC_PORT_PERR_INT_CAUSE ; 
 int /*<<< orphan*/  A_MAC_PORT_PERR_INT_CAUSE_100G ; 
 int /*<<< orphan*/  A_MAC_PORT_PERR_INT_EN ; 
 int /*<<< orphan*/  A_MAC_PORT_PERR_INT_EN_100G ; 
 int /*<<< orphan*/  A_XGMAC_PORT_INT_CAUSE ; 
 int /*<<< orphan*/  A_XGMAC_PORT_INT_EN ; 
 scalar_t__ CHELSIO_T5 ; 
 scalar_t__ CHELSIO_T6 ; 
#define  F_RXFIFO_PRTY_ERR 129 
#define  F_TXFIFO_PRTY_ERR 128 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 scalar_t__ FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 int FUNC5 (struct adapter*,struct intr_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC6(struct adapter *adap, int port, bool verbose)
{
	static const struct intr_details mac_intr_details[] = {
		{ F_TXFIFO_PRTY_ERR, "MAC Tx FIFO parity error" },
		{ F_RXFIFO_PRTY_ERR, "MAC Rx FIFO parity error" },
		{ 0 }
	};
	char name[32];
	struct intr_info ii;
	bool fatal = false;

	if (FUNC3(adap)) {
		FUNC4(name, sizeof(name), "XGMAC_PORT%u_INT_CAUSE", port);
		ii.name = &name[0];
		ii.cause_reg = FUNC0(port, A_XGMAC_PORT_INT_CAUSE);
		ii.enable_reg = FUNC0(port, A_XGMAC_PORT_INT_EN);
		ii.fatal = F_TXFIFO_PRTY_ERR | F_RXFIFO_PRTY_ERR;
		ii.flags = 0;
		ii.details = mac_intr_details;
		ii.actions = NULL;
	} else {
		FUNC4(name, sizeof(name), "MAC_PORT%u_INT_CAUSE", port);
		ii.name = &name[0];
		ii.cause_reg = FUNC1(port, A_MAC_PORT_INT_CAUSE);
		ii.enable_reg = FUNC1(port, A_MAC_PORT_INT_EN);
		ii.fatal = F_TXFIFO_PRTY_ERR | F_RXFIFO_PRTY_ERR;
		ii.flags = 0;
		ii.details = mac_intr_details;
		ii.actions = NULL;
	}
	fatal |= FUNC5(adap, &ii, 0, verbose);

	if (FUNC2(adap) >= CHELSIO_T5) {
		FUNC4(name, sizeof(name), "MAC_PORT%u_PERR_INT_CAUSE", port);
		ii.name = &name[0];
		ii.cause_reg = FUNC1(port, A_MAC_PORT_PERR_INT_CAUSE);
		ii.enable_reg = FUNC1(port, A_MAC_PORT_PERR_INT_EN);
		ii.fatal = 0;
		ii.flags = 0;
		ii.details = NULL;
		ii.actions = NULL;
		fatal |= FUNC5(adap, &ii, 0, verbose);
	}

	if (FUNC2(adap) >= CHELSIO_T6) {
		FUNC4(name, sizeof(name), "MAC_PORT%u_PERR_INT_CAUSE_100G", port);
		ii.name = &name[0];
		ii.cause_reg = FUNC1(port, A_MAC_PORT_PERR_INT_CAUSE_100G);
		ii.enable_reg = FUNC1(port, A_MAC_PORT_PERR_INT_EN_100G);
		ii.fatal = 0;
		ii.flags = 0;
		ii.details = NULL;
		ii.actions = NULL;
		fatal |= FUNC5(adap, &ii, 0, verbose);
	}

	return (fatal);
}