
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int size; } ;
typedef TYPE_1__ ocs_array_t ;



uint32_t
ocs_array_get_size(ocs_array_t *array)
{
 return array->size;
}
