
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int ocs_hw_t ;
typedef int ocs_hw_property_e ;


 int* ocs_hw_get_ptr (int *,int ) ;

uint64_t
ocs_get_wwn(ocs_hw_t *hw, ocs_hw_property_e prop)
{
 uint8_t *p = ocs_hw_get_ptr(hw, prop);
 uint64_t value = 0;

 if (p) {
  uint32_t i;
  for (i = 0; i < sizeof(value); i++) {
   value = (value << 8) | p[i];
  }
 }
 return value;
}
