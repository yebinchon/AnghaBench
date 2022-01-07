
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct mps_softc {struct dev_mapping_table* mapping_table; } ;
struct dev_mapping_table {scalar_t__ dev_handle; scalar_t__ physical_id; unsigned int id; } ;


 unsigned int MPS_MAP_BAD_ID ;
 int _mapping_get_ir_maprange (struct mps_softc*,size_t*,size_t*) ;

unsigned int
mps_mapping_get_raid_tid(struct mps_softc *sc, u64 wwid, u16 volHandle)
{
 u32 start_idx, end_idx, map_idx;
 struct dev_mapping_table *mt_entry;

 _mapping_get_ir_maprange(sc, &start_idx, &end_idx);
 mt_entry = &sc->mapping_table[start_idx];
 for (map_idx = start_idx; map_idx <= end_idx; map_idx++, mt_entry++) {
  if (mt_entry->dev_handle == volHandle &&
      mt_entry->physical_id == wwid)
   return mt_entry->id;
 }

 return MPS_MAP_BAD_ID;
}
