
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ocs_bitmap_t ;


 int M_NOWAIT ;
 int M_OCS ;
 int M_ZERO ;
 int bitstr_size (int ) ;
 int * malloc (int ,int ,int) ;

ocs_bitmap_t *
ocs_bitmap_alloc(uint32_t n_bits)
{

 return malloc(bitstr_size(n_bits), M_OCS, M_ZERO | M_NOWAIT);
}
