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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct nlm_xlpnae_softc {int max_ports; TYPE_1__* portcfg; scalar_t__ per_port_num_flows; int /*<<< orphan*/  total_num_ports; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ num_channels; int /*<<< orphan*/  block; } ;

/* Variables and functions */
 scalar_t__ UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_xlpnae_softc*,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int,int) ; 
 int FUNC2 (struct nlm_xlpnae_softc*) ; 

__attribute__((used)) static void
FUNC3(struct nlm_xlpnae_softc *sc)
{
	uint64_t nae_base;
	uint32_t cur_slot, cur_slot_base;
	uint32_t cur_flow_base, port, flow_mask;
	int max_channels;
	int i, context;

	cur_slot = 0;
	cur_slot_base = 0;
	cur_flow_base = 0;
	nae_base = sc->base;
	flow_mask = FUNC0(sc->total_num_ports);
	/* calculate max_channels */
	max_channels = FUNC2(sc);

	port = 0;
	context = 0;
	for (i = 0; i < sc->max_ports; i++) {
		if (sc->portcfg[i].type == UNKNOWN)
			continue;
		FUNC1(sc, sc->portcfg[i].block, i, cur_flow_base,
		    flow_mask, max_channels, context);
		cur_flow_base += sc->per_port_num_flows;
		context += sc->portcfg[i].num_channels;
	}
}