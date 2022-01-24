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
struct mps_softc {scalar_t__ pending_map_events; } ;
struct _map_topology_change {int num_entries; struct _map_phy_change* phy_details; int /*<<< orphan*/  exp_status; int /*<<< orphan*/  num_phys; int /*<<< orphan*/  start_phy_num; void* exp_handle; void* enc_handle; } ;
struct _map_phy_change {int reason; void* dev_handle; } ;
struct TYPE_5__ {int NumEntries; TYPE_1__* PHY; int /*<<< orphan*/  ExpStatus; int /*<<< orphan*/  NumPhys; int /*<<< orphan*/  StartPhyNum; int /*<<< orphan*/  ExpanderDevHandle; int /*<<< orphan*/  EnclosureHandle; } ;
struct TYPE_4__ {int PhyStatus; int /*<<< orphan*/  AttachedDevHandle; } ;
typedef  TYPE_1__ Mpi2EventSasTopoPhyEntry_t ;
typedef  TYPE_2__ Mpi2EventDataSasTopologyChangeList_t ;

/* Variables and functions */
 int MPI2_EVENT_SAS_TOPO_RC_MASK ; 
 int /*<<< orphan*/  M_MPT2 ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct mps_softc*,struct _map_topology_change*) ; 
 int /*<<< orphan*/  FUNC1 (struct mps_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mps_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mps_softc*,struct _map_topology_change*) ; 
 int /*<<< orphan*/  FUNC4 (struct mps_softc*,struct _map_topology_change*) ; 
 int /*<<< orphan*/  FUNC5 (struct _map_phy_change*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 struct _map_phy_change* FUNC7 (int,int /*<<< orphan*/ ,int) ; 

void
FUNC8(struct mps_softc *sc,
    Mpi2EventDataSasTopologyChangeList_t *event_data)
{
	struct _map_topology_change topo_change;
	struct _map_phy_change *phy_change;
	Mpi2EventSasTopoPhyEntry_t *event_phy_change;
	u8 i, num_entries;

	topo_change.enc_handle = FUNC6(event_data->EnclosureHandle);
	topo_change.exp_handle = FUNC6(event_data->ExpanderDevHandle);
	num_entries = event_data->NumEntries;
	topo_change.num_entries = num_entries;
	topo_change.start_phy_num = event_data->StartPhyNum;
	topo_change.num_phys = event_data->NumPhys;
	topo_change.exp_status = event_data->ExpStatus;
	event_phy_change = event_data->PHY;
	topo_change.phy_details = NULL;

	if (!num_entries)
		goto out;
	phy_change = FUNC7(sizeof(struct _map_phy_change) * num_entries,
	    M_MPT2, M_NOWAIT|M_ZERO);
	topo_change.phy_details = phy_change;
	if (!phy_change)
		goto out;
	for (i = 0; i < num_entries; i++, event_phy_change++, phy_change++) {
		phy_change->dev_handle = FUNC6(event_phy_change->
		    AttachedDevHandle);
		phy_change->reason = event_phy_change->PhyStatus &
		    MPI2_EVENT_SAS_TOPO_RC_MASK;
	}
	FUNC4(sc, &topo_change);
	FUNC3(sc, &topo_change);
	FUNC1(sc);
	FUNC0(sc, &topo_change);

out:
	FUNC5(topo_change.phy_details, M_MPT2);
	FUNC2(sc);
	if (sc->pending_map_events)
		sc->pending_map_events--;
}