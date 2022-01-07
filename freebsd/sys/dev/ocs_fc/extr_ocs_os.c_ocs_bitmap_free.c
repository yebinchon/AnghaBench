
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_bitmap_t ;


 int M_OCS ;
 int free (int *,int ) ;

void
ocs_bitmap_free(ocs_bitmap_t *bitmap)
{

 free(bitmap, M_OCS);
}
