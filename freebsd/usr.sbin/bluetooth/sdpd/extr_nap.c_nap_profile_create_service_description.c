
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int common_profile_create_string8 (int *,int const* const,int const*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int32_t
nap_profile_create_service_description(
  uint8_t *buf, uint8_t const * const eob,
  uint8_t const *data, uint32_t datalen)
{
 static char service_descr[] = "Personal Ad-hoc Network Service";

 return (common_profile_create_string8(
   buf, eob,
   (uint8_t const *) service_descr,
   strlen(service_descr)));
}
