
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mpr_softc {size_t num_enc_table_entries; struct enc_mapping_table* enclosure_table; } ;
struct enc_mapping_table {size_t missing_count; int skip_search; } ;


 size_t MPR_ENCTABLE_BAD_IDX ;

__attribute__((used)) static u8
_mapping_get_high_missing_et_idx(struct mpr_softc *sc)
{
 struct enc_mapping_table *et_entry;
 u8 high_missing_count = 0;
 u8 enc_idx, high_idx = MPR_ENCTABLE_BAD_IDX;

 for (enc_idx = 0; enc_idx < sc->num_enc_table_entries; enc_idx++) {
  et_entry = &sc->enclosure_table[enc_idx];
  if ((et_entry->missing_count > high_missing_count) &&
      !et_entry->skip_search) {
   high_missing_count = et_entry->missing_count;
   high_idx = enc_idx;
  }
 }
 return high_idx;
}
