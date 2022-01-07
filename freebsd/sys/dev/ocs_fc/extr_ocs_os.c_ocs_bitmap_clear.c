
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ocs_bitmap_t ;


 int bit_clear (int *,int ) ;

void
ocs_bitmap_clear(ocs_bitmap_t *bitmap, uint32_t bit)
{
 bit_clear(bitmap, bit);
}
