
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef void pool_hdr_t ;
struct TYPE_3__ {int a; } ;
typedef TYPE_1__ ocs_pool_t ;


 void* ocs_array_get (int ,int ) ;

void *
ocs_pool_get_instance(ocs_pool_t *pool, uint32_t idx)
{
 pool_hdr_t *h = ocs_array_get(pool->a, idx);

 if (h == ((void*)0)) {
  return ((void*)0);
 }
 return &h[1];
}
