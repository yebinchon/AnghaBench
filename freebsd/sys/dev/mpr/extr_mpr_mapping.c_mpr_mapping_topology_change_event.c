
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mpr_softc {scalar_t__ pending_map_events; } ;
struct _map_topology_change {int num_entries; struct _map_phy_change* phy_details; int exp_status; int num_phys; int start_phy_num; void* exp_handle; void* enc_handle; } ;
struct _map_phy_change {int reason; void* dev_handle; } ;
struct TYPE_5__ {int NumEntries; TYPE_1__* PHY; int ExpStatus; int NumPhys; int StartPhyNum; int ExpanderDevHandle; int EnclosureHandle; } ;
struct TYPE_4__ {int PhyStatus; int AttachedDevHandle; } ;
typedef TYPE_1__ Mpi2EventSasTopoPhyEntry_t ;
typedef TYPE_2__ Mpi2EventDataSasTopologyChangeList_t ;


 int MPI2_EVENT_SAS_TOPO_RC_MASK ;
 int M_MPR ;
 int M_NOWAIT ;
 int M_ZERO ;
 int _mapping_add_new_device (struct mpr_softc*,struct _map_topology_change*) ;
 int _mapping_clear_removed_entries (struct mpr_softc*) ;
 int _mapping_flush_dpm_pages (struct mpr_softc*) ;
 int _mapping_get_dev_info (struct mpr_softc*,struct _map_topology_change*) ;
 int _mapping_update_missing_count (struct mpr_softc*,struct _map_topology_change*) ;
 int free (struct _map_phy_change*,int ) ;
 void* le16toh (int ) ;
 struct _map_phy_change* malloc (int,int ,int) ;

void
mpr_mapping_topology_change_event(struct mpr_softc *sc,
    Mpi2EventDataSasTopologyChangeList_t *event_data)
{
 struct _map_topology_change topo_change;
 struct _map_phy_change *phy_change;
 Mpi2EventSasTopoPhyEntry_t *event_phy_change;
 u8 i, num_entries;

 topo_change.enc_handle = le16toh(event_data->EnclosureHandle);
 topo_change.exp_handle = le16toh(event_data->ExpanderDevHandle);
 num_entries = event_data->NumEntries;
 topo_change.num_entries = num_entries;
 topo_change.start_phy_num = event_data->StartPhyNum;
 topo_change.num_phys = event_data->NumPhys;
 topo_change.exp_status = event_data->ExpStatus;
 event_phy_change = event_data->PHY;
 topo_change.phy_details = ((void*)0);

 if (!num_entries)
  goto out;
 phy_change = malloc(sizeof(struct _map_phy_change) * num_entries,
     M_MPR, M_NOWAIT|M_ZERO);
 topo_change.phy_details = phy_change;
 if (!phy_change)
  goto out;
 for (i = 0; i < num_entries; i++, event_phy_change++, phy_change++) {
  phy_change->dev_handle = le16toh(event_phy_change->
      AttachedDevHandle);
  phy_change->reason = event_phy_change->PhyStatus &
      MPI2_EVENT_SAS_TOPO_RC_MASK;
 }
 _mapping_update_missing_count(sc, &topo_change);
 _mapping_get_dev_info(sc, &topo_change);
 _mapping_clear_removed_entries(sc);
 _mapping_add_new_device(sc, &topo_change);

out:
 free(topo_change.phy_details, M_MPR);
 _mapping_flush_dpm_pages(sc);
 if (sc->pending_map_events)
  sc->pending_map_events--;
}
