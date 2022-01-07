
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct mps_softc {size_t max_devices; struct dev_mapping_table* mapping_table; } ;
struct dev_mapping_table {scalar_t__ physical_id; } ;


 size_t MPS_MAPTABLE_BAD_IDX ;

__attribute__((used)) static u32
_mapping_get_mt_idx_from_id(struct mps_softc *sc, u64 dev_id)
{
 u32 map_idx;
 struct dev_mapping_table *mt_entry;

 for (map_idx = 0; map_idx < sc->max_devices; map_idx++) {
  mt_entry = &sc->mapping_table[map_idx];
  if (mt_entry->physical_id == dev_id)
   return map_idx;
 }
 return MPS_MAPTABLE_BAD_IDX;
}
