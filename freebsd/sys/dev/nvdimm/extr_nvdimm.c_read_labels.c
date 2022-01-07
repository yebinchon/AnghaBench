
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct nvdimm_label_index {scalar_t__ seq; } ;
struct nvdimm_label {int dummy; } ;
struct nvdimm_dev {size_t label_area_size; TYPE_1__* label_index; } ;
typedef int bitstr_t ;
struct TYPE_2__ {int slot_cnt; scalar_t__ free; } ;


 int ENXIO ;
 int M_NVDIMM ;
 int M_WAITOK ;
 int bcopy (struct nvdimm_label_index*,TYPE_1__*,size_t) ;
 int bit_ffc_at (int *,int,int ,int*) ;
 int free (struct nvdimm_label_index*,int ) ;
 int label_index_is_valid (struct nvdimm_label_index*,size_t,size_t,int) ;
 void* malloc (size_t,int ,int ) ;
 int read_label (struct nvdimm_dev*,int) ;
 int read_label_area (struct nvdimm_dev*,void*,int ,int) ;
 int roundup2 (size_t,int) ;

__attribute__((used)) static int
read_labels(struct nvdimm_dev *nv)
{
 struct nvdimm_label_index *indices, *index1;
 size_t bitfield_size, index_size, num_labels;
 int error, n;
 bool index_0_valid, index_1_valid;

 for (index_size = 256; ; index_size += 256) {
  num_labels = 8 * (index_size -
      sizeof(struct nvdimm_label_index));
  if (index_size + num_labels * sizeof(struct nvdimm_label) >=
      nv->label_area_size)
   break;
 }
 num_labels = (nv->label_area_size - index_size) /
     sizeof(struct nvdimm_label);
 bitfield_size = roundup2(num_labels, 8) / 8;
 indices = malloc(2 * index_size, M_NVDIMM, M_WAITOK);
 index1 = (void *)((uint8_t *)indices + index_size);
 error = read_label_area(nv, (void *)indices, 0, 2 * index_size);
 if (error != 0) {
  free(indices, M_NVDIMM);
  return (error);
 }
 index_0_valid = label_index_is_valid(indices, num_labels, index_size,
     0);
 index_1_valid = label_index_is_valid(indices, num_labels, index_size,
     1);
 if (!index_0_valid && !index_1_valid) {
  free(indices, M_NVDIMM);
  return (ENXIO);
 }
 if (index_0_valid && index_1_valid) {
  if (((int)indices->seq - (int)index1->seq + 3) % 3 == 1) {

   index_1_valid = 0;
  } else {






   index_0_valid = 0;
  }
 }
 nv->label_index = malloc(index_size, M_NVDIMM, M_WAITOK);
 bcopy(index_0_valid ? indices : index1, nv->label_index, index_size);
 free(indices, M_NVDIMM);
 bit_ffc_at((bitstr_t *)nv->label_index->free, 0,
     nv->label_index->slot_cnt, &n);
 while (n >= 0) {
  read_label(nv, n);
  bit_ffc_at((bitstr_t *)nv->label_index->free, n + 1,
      nv->label_index->slot_cnt, &n);
 }
 return (0);
}
