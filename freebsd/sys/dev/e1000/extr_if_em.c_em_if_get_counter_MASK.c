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
typedef  scalar_t__ uint64_t ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {scalar_t__ latecol; scalar_t__ ecol; scalar_t__ cexterr; scalar_t__ mpc; scalar_t__ roc; scalar_t__ ruc; scalar_t__ algnerrc; scalar_t__ crcerrs; scalar_t__ rxerrc; scalar_t__ colc; } ;
struct adapter {scalar_t__ watchdog_events; TYPE_1__ stats; scalar_t__ dropped_pkts; } ;
typedef  int ift_counter ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
#define  IFCOUNTER_COLLISIONS 130 
#define  IFCOUNTER_IERRORS 129 
#define  IFCOUNTER_OERRORS 128 
 scalar_t__ FUNC0 (struct ifnet*,int) ; 
 struct ifnet* FUNC1 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t
FUNC3(if_ctx_t ctx, ift_counter cnt)
{
	struct adapter *adapter = FUNC2(ctx);
	struct ifnet *ifp = FUNC1(ctx);

	switch (cnt) {
	case IFCOUNTER_COLLISIONS:
		return (adapter->stats.colc);
	case IFCOUNTER_IERRORS:
		return (adapter->dropped_pkts + adapter->stats.rxerrc +
		    adapter->stats.crcerrs + adapter->stats.algnerrc +
		    adapter->stats.ruc + adapter->stats.roc +
		    adapter->stats.mpc + adapter->stats.cexterr);
	case IFCOUNTER_OERRORS:
		return (adapter->stats.ecol + adapter->stats.latecol +
		    adapter->watchdog_events);
	default:
		return (FUNC0(ifp, cnt));
	}
}