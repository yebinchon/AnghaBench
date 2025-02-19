
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_llq_configurations {int llq_ring_entry_size_value; int llq_num_decs_before_header; int llq_stride_ctrl; int llq_ring_entry_size; int llq_header_location; } ;


 int ENA_ADMIN_INLINE_HEADER ;
 int ENA_ADMIN_LIST_ENTRY_SIZE_128B ;
 int ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_2 ;
 int ENA_ADMIN_MULTIPLE_DESCS_PER_ENTRY ;

__attribute__((used)) static inline
void set_default_llq_configurations(struct ena_llq_configurations *llq_config)
{
 llq_config->llq_header_location = ENA_ADMIN_INLINE_HEADER;
 llq_config->llq_ring_entry_size = ENA_ADMIN_LIST_ENTRY_SIZE_128B;
 llq_config->llq_stride_ctrl = ENA_ADMIN_MULTIPLE_DESCS_PER_ENTRY;
 llq_config->llq_num_decs_before_header =
     ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_2;
 llq_config->llq_ring_entry_size_value = 128;
}
