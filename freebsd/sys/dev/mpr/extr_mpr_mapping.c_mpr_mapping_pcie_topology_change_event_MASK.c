#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct mpr_softc {scalar_t__ pending_map_events; } ;
struct _map_port_change {int /*<<< orphan*/  reason; void* dev_handle; } ;
struct _map_pcie_topology_change {int num_entries; struct _map_port_change* port_details; int /*<<< orphan*/  switch_status; int /*<<< orphan*/  num_ports; int /*<<< orphan*/  start_port_num; void* enc_handle; void* switch_dev_handle; } ;
struct TYPE_5__ {int NumEntries; TYPE_1__* PortEntry; int /*<<< orphan*/  SwitchStatus; int /*<<< orphan*/  NumPorts; int /*<<< orphan*/  StartPortNum; int /*<<< orphan*/  EnclosureHandle; int /*<<< orphan*/  SwitchDevHandle; } ;
struct TYPE_4__ {int /*<<< orphan*/  PortStatus; int /*<<< orphan*/  AttachedDevHandle; } ;
typedef  TYPE_1__ Mpi26EventPCIeTopoPortEntry_t ;
typedef  TYPE_2__ Mpi26EventDataPCIeTopologyChangeList_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_MPR ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct mpr_softc*,struct _map_pcie_topology_change*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpr_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mpr_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mpr_softc*,struct _map_pcie_topology_change*) ; 
 int /*<<< orphan*/  FUNC4 (struct mpr_softc*,struct _map_pcie_topology_change*) ; 
 int /*<<< orphan*/  FUNC5 (struct _map_port_change*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 struct _map_port_change* FUNC7 (int,int /*<<< orphan*/ ,int) ; 

void
FUNC8(struct mpr_softc *sc,
    Mpi26EventDataPCIeTopologyChangeList_t *event_data)
{
	struct _map_pcie_topology_change topo_change;
	struct _map_port_change *port_change;
	Mpi26EventPCIeTopoPortEntry_t *event_port_change;
	u8 i, num_entries;

	topo_change.switch_dev_handle = FUNC6(event_data->SwitchDevHandle);
	topo_change.enc_handle = FUNC6(event_data->EnclosureHandle);
	num_entries = event_data->NumEntries;
	topo_change.num_entries = num_entries;
	topo_change.start_port_num = event_data->StartPortNum;
	topo_change.num_ports = event_data->NumPorts;
	topo_change.switch_status = event_data->SwitchStatus;
	event_port_change = event_data->PortEntry;
	topo_change.port_details = NULL;

	if (!num_entries)
		goto out;
	port_change = FUNC7(sizeof(struct _map_port_change) * num_entries,
	    M_MPR, M_NOWAIT|M_ZERO);
	topo_change.port_details = port_change;
	if (!port_change)
		goto out;
	for (i = 0; i < num_entries; i++, event_port_change++, port_change++) {
		port_change->dev_handle = FUNC6(event_port_change->
		    AttachedDevHandle);
		port_change->reason = event_port_change->PortStatus;
	}
	FUNC4(sc, &topo_change);
	FUNC3(sc, &topo_change);
	FUNC1(sc);
	FUNC0(sc, &topo_change);

out:
	FUNC5(topo_change.port_details, M_MPR);
	FUNC2(sc);
	if (sc->pending_map_events)
		sc->pending_map_events--;
}