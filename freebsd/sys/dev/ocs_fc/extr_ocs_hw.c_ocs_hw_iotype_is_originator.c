
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
__attribute__((used)) static uint8_t ocs_hw_iotype_is_originator(uint16_t io_type)
{
 switch (io_type) {
 case 129:
 case 128:
 case 130:
 case 131:
 case 132:
  return 1;
 default:
  return 0;
 }
}
