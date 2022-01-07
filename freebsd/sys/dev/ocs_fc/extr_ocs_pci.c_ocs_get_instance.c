
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int ocs_t ;


 size_t ARRAY_SIZE (int **) ;
 int ** ocs_devices ;

ocs_t *ocs_get_instance(uint32_t index)
{
 if (index < ARRAY_SIZE(ocs_devices)) {
  return ocs_devices[index];
 }
 return ((void*)0);
}
