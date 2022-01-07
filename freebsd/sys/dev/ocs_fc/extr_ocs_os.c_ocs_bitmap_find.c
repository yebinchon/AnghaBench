
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ocs_bitmap_t ;
typedef int int32_t ;


 int bit_ffc (int *,int ,int*) ;
 int bit_set (int *,int) ;

int32_t
ocs_bitmap_find(ocs_bitmap_t *bitmap, uint32_t n_bits)
{
 int32_t position = -1;

 bit_ffc(bitmap, n_bits, &position);

 if (-1 != position) {
  bit_set(bitmap, position);
 }

 return position;
}
