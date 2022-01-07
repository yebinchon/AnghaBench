
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct mps_softc {struct dev_mapping_table* mapping_table; } ;
struct enc_mapping_table {scalar_t__ num_slots; size_t start_index; int enclosure_id; } ;
struct dev_mapping_table {int physical_id; } ;


 size_t MPS_MAPTABLE_BAD_IDX ;

__attribute__((used)) static inline void
_mapping_set_mid_to_eid(struct mps_softc *sc,
    struct enc_mapping_table *et_entry)
{
 struct dev_mapping_table *mt_entry;
 u16 slots = et_entry->num_slots, map_idx;
 u32 start_idx = et_entry->start_index;

 if (start_idx != MPS_MAPTABLE_BAD_IDX) {
  mt_entry = &sc->mapping_table[start_idx];
  for (map_idx = 0; map_idx < slots; map_idx++, mt_entry++)
   mt_entry->physical_id = et_entry->enclosure_id;
 }
}
