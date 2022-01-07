
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u64 ;
struct mps_softc {size_t num_enc_table_entries; struct enc_mapping_table* enclosure_table; } ;
struct enc_mapping_table {scalar_t__ enclosure_id; int phy_bits; } ;


 size_t MPS_ENCTABLE_BAD_IDX ;
 int le32toh (int ) ;
 scalar_t__ le64toh (int ) ;

__attribute__((used)) static u8
_mapping_get_enc_idx_from_id(struct mps_softc *sc, u64 enc_id,
    u64 phy_bits)
{
 struct enc_mapping_table *et_entry;
 u8 enc_idx = 0;

 for (enc_idx = 0; enc_idx < sc->num_enc_table_entries; enc_idx++) {
  et_entry = &sc->enclosure_table[enc_idx];
  if ((et_entry->enclosure_id == le64toh(enc_id)) &&
      (!et_entry->phy_bits || (et_entry->phy_bits &
      le32toh(phy_bits))))
   return enc_idx;
 }
 return MPS_ENCTABLE_BAD_IDX;
}
