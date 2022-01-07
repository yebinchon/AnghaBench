
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int entry_count; } ;
typedef TYPE_1__ ocs_cbuf_t ;
typedef int ocs_array_t ;
typedef int int32_t ;


 scalar_t__ MIN (int ,int ) ;
 int ocs_array_get (int *,scalar_t__) ;
 int ocs_array_get_count (int *) ;
 int ocs_cbuf_put (TYPE_1__*,int ) ;

int32_t
ocs_cbuf_prime(ocs_cbuf_t *cbuf, ocs_array_t *array)
{
 uint32_t i;
 uint32_t count = MIN(ocs_array_get_count(array), cbuf->entry_count);

 for (i = 0; i < count; i++) {
  ocs_cbuf_put(cbuf, ocs_array_get(array, i));
 }
 return 0;
}
