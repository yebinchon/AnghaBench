
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int common_profile_create_string8 (int *,int const* const,int const*,int ) ;
 int strlen (char*) ;

int32_t
common_profile_create_service_provider_name(
  uint8_t *buf, uint8_t const * const eob,
  uint8_t const *data, uint32_t datalen)
{
 char provider_name[] = "FreeBSD";

 return (common_profile_create_string8(buf, eob,
   (uint8_t const *) provider_name,
   strlen(provider_name)));
}
