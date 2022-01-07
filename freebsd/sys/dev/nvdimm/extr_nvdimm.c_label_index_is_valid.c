
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct nvdimm_label_index {scalar_t__ checksum; size_t this_offset; size_t this_size; size_t other_offset; int seq; scalar_t__ slot_cnt; int label_size; int signature; } ;


 int NVDIMM_INDEX_BLOCK_SIGNATURE ;
 scalar_t__ fletcher64 (struct nvdimm_label_index*,size_t) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool
label_index_is_valid(struct nvdimm_label_index *index, uint32_t max_labels,
    size_t size, size_t offset)
{
 uint64_t checksum;

 index = (struct nvdimm_label_index *)((uint8_t *)index + size * offset);
 if (strcmp(index->signature, NVDIMM_INDEX_BLOCK_SIGNATURE) != 0)
  return 0;
 checksum = index->checksum;
 index->checksum = 0;
 if (checksum != fletcher64(index, size) ||
     index->this_offset != size * offset || index->this_size != size ||
     index->other_offset != size * (offset == 0 ? 1 : 0) ||
     index->seq == 0 || index->seq > 3 || index->slot_cnt > max_labels ||
     index->label_size != 1)
  return 0;
 return 1;
}
