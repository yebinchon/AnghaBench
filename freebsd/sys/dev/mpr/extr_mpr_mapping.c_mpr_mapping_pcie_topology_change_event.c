
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mpr_softc {scalar_t__ pending_map_events; } ;
struct _map_port_change {int reason; void* dev_handle; } ;
struct _map_pcie_topology_change {int num_entries; struct _map_port_change* port_details; int switch_status; int num_ports; int start_port_num; void* enc_handle; void* switch_dev_handle; } ;
struct TYPE_5__ {int NumEntries; TYPE_1__* PortEntry; int SwitchStatus; int NumPorts; int StartPortNum; int EnclosureHandle; int SwitchDevHandle; } ;
struct TYPE_4__ {int PortStatus; int AttachedDevHandle; } ;
typedef TYPE_1__ Mpi26EventPCIeTopoPortEntry_t ;
typedef TYPE_2__ Mpi26EventDataPCIeTopologyChangeList_t ;


 int M_MPR ;
 int M_NOWAIT ;
 int M_ZERO ;
 int _mapping_add_new_pcie_device (struct mpr_softc*,struct _map_pcie_topology_change*) ;
 int _mapping_clear_removed_entries (struct mpr_softc*) ;
 int _mapping_flush_dpm_pages (struct mpr_softc*) ;
 int _mapping_get_pcie_dev_info (struct mpr_softc*,struct _map_pcie_topology_change*) ;
 int _mapping_update_pcie_missing_count (struct mpr_softc*,struct _map_pcie_topology_change*) ;
 int free (struct _map_port_change*,int ) ;
 void* le16toh (int ) ;
 struct _map_port_change* malloc (int,int ,int) ;

void
mpr_mapping_pcie_topology_change_event(struct mpr_softc *sc,
    Mpi26EventDataPCIeTopologyChangeList_t *event_data)
{
 struct _map_pcie_topology_change topo_change;
 struct _map_port_change *port_change;
 Mpi26EventPCIeTopoPortEntry_t *event_port_change;
 u8 i, num_entries;

 topo_change.switch_dev_handle = le16toh(event_data->SwitchDevHandle);
 topo_change.enc_handle = le16toh(event_data->EnclosureHandle);
 num_entries = event_data->NumEntries;
 topo_change.num_entries = num_entries;
 topo_change.start_port_num = event_data->StartPortNum;
 topo_change.num_ports = event_data->NumPorts;
 topo_change.switch_status = event_data->SwitchStatus;
 event_port_change = event_data->PortEntry;
 topo_change.port_details = ((void*)0);

 if (!num_entries)
  goto out;
 port_change = malloc(sizeof(struct _map_port_change) * num_entries,
     M_MPR, M_NOWAIT|M_ZERO);
 topo_change.port_details = port_change;
 if (!port_change)
  goto out;
 for (i = 0; i < num_entries; i++, event_port_change++, port_change++) {
  port_change->dev_handle = le16toh(event_port_change->
      AttachedDevHandle);
  port_change->reason = event_port_change->PortStatus;
 }
 _mapping_update_pcie_missing_count(sc, &topo_change);
 _mapping_get_pcie_dev_info(sc, &topo_change);
 _mapping_clear_removed_entries(sc);
 _mapping_add_new_pcie_device(sc, &topo_change);

out:
 free(topo_change.port_details, M_MPR);
 _mapping_flush_dpm_pages(sc);
 if (sc->pending_map_events)
  sc->pending_map_events--;
}
