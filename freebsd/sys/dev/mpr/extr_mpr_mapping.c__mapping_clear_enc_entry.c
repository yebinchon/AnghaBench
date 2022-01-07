
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enc_mapping_table {scalar_t__ init_complete; scalar_t__ skip_search; scalar_t__ removal_flag; scalar_t__ missing_count; scalar_t__ start_slot; scalar_t__ num_slots; scalar_t__ enc_handle; int dpm_entry_num; scalar_t__ phy_bits; int start_index; scalar_t__ enclosure_id; } ;


 int MPR_DPM_BAD_IDX ;
 int MPR_MAPTABLE_BAD_IDX ;

__attribute__((used)) static inline void
_mapping_clear_enc_entry(struct enc_mapping_table *enc_entry)
{
 enc_entry->enclosure_id = 0;
 enc_entry->start_index = MPR_MAPTABLE_BAD_IDX;
 enc_entry->phy_bits = 0;
 enc_entry->dpm_entry_num = MPR_DPM_BAD_IDX;
 enc_entry->enc_handle = 0;
 enc_entry->num_slots = 0;
 enc_entry->start_slot = 0;
 enc_entry->missing_count = 0;
 enc_entry->removal_flag = 0;
 enc_entry->skip_search = 0;
 enc_entry->init_complete = 0;
}
