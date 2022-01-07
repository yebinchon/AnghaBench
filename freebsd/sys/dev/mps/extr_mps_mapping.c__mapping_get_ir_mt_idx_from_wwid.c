
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct mps_softc {struct dev_mapping_table* mapping_table; } ;
struct dev_mapping_table {scalar_t__ physical_id; } ;


 size_t MPS_MAPTABLE_BAD_IDX ;
 int _mapping_get_ir_maprange (struct mps_softc*,size_t*,size_t*) ;

__attribute__((used)) static u32
_mapping_get_ir_mt_idx_from_wwid(struct mps_softc *sc, u64 wwid)
{
 u32 start_idx, end_idx, map_idx;
 struct dev_mapping_table *mt_entry;

 _mapping_get_ir_maprange(sc, &start_idx, &end_idx);
 mt_entry = &sc->mapping_table[start_idx];
 for (map_idx = start_idx; map_idx <= end_idx; map_idx++, mt_entry++)
  if (mt_entry->physical_id == wwid)
   return map_idx;

 return MPS_MAPTABLE_BAD_IDX;
}
