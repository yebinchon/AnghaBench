
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int ocs_bitmap_t ;
typedef int int32_t ;


 int bit_ffc (int *,int ,int*) ;
 int bit_ffs (int *,int ,int*) ;

int32_t
ocs_bitmap_search(ocs_bitmap_t *bitmap, uint8_t set, uint32_t n_bits)
{
 int32_t position;

 if (!bitmap) {
  return -1;
 }

 if (set) {
  bit_ffs(bitmap, n_bits, &position);
 } else {
  bit_ffc(bitmap, n_bits, &position);
 }

 return position;
}
