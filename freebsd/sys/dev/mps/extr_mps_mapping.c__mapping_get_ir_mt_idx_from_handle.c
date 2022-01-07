
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct mps_softc {struct dev_mapping_table* mapping_table; } ;
struct dev_mapping_table {scalar_t__ dev_handle; } ;


 size_t MPS_MAPTABLE_BAD_IDX ;
 int _mapping_get_ir_maprange (struct mps_softc*,size_t*,size_t*) ;

__attribute__((used)) static u32
_mapping_get_ir_mt_idx_from_handle(struct mps_softc *sc, u16 volHandle)
{
 u32 start_idx, end_idx, map_idx;
 struct dev_mapping_table *mt_entry;

 _mapping_get_ir_maprange(sc, &start_idx, &end_idx);
 mt_entry = &sc->mapping_table[start_idx];
 for (map_idx = start_idx; map_idx <= end_idx; map_idx++, mt_entry++)
  if (mt_entry->dev_handle == volHandle)
   return map_idx;

 return MPS_MAPTABLE_BAD_IDX;
}
