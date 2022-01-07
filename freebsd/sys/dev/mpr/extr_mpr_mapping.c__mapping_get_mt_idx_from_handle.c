
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct mpr_softc {size_t max_devices; struct dev_mapping_table* mapping_table; } ;
struct dev_mapping_table {scalar_t__ dev_handle; } ;


 size_t MPR_MAPTABLE_BAD_IDX ;

__attribute__((used)) static u32
_mapping_get_mt_idx_from_handle(struct mpr_softc *sc, u16 handle)
{
 u32 map_idx;
 struct dev_mapping_table *mt_entry;

 for (map_idx = 0; map_idx < sc->max_devices; map_idx++) {
  mt_entry = &sc->mapping_table[map_idx];
  if (mt_entry->dev_handle == handle)
   return map_idx;
 }
 return MPR_MAPTABLE_BAD_IDX;
}
