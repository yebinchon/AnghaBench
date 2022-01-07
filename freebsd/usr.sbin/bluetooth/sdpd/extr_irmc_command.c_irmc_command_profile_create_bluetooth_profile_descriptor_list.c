
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int profile_descriptor_list ;
typedef int int32_t ;



 int common_profile_create_bluetooth_profile_descriptor_list (int *,int const* const,int const*,int) ;

__attribute__((used)) static int32_t
irmc_command_profile_create_bluetooth_profile_descriptor_list(
  uint8_t *buf, uint8_t const * const eob,
  uint8_t const *data, uint32_t datalen)
{
 static uint16_t profile_descriptor_list[] = {
  128,
  0x0100
 };

 return (common_profile_create_bluetooth_profile_descriptor_list(
   buf, eob,
   (uint8_t const *) profile_descriptor_list,
   sizeof(profile_descriptor_list)));
}
