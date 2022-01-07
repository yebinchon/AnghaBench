
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_IPFW ;
 int free (void*,int ) ;

void
ipfw_objhash_bitmap_free(void *idx, int blocks)
{

 free(idx, M_IPFW);
}
