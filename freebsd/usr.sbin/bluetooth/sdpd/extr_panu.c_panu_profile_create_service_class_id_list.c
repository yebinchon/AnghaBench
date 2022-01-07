
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int service_classes ;
typedef int int32_t ;



 int common_profile_create_service_class_id_list (int *,int const* const,int const*,int) ;

__attribute__((used)) static int32_t
panu_profile_create_service_class_id_list(
  uint8_t *buf, uint8_t const * const eob,
  uint8_t const *data, uint32_t datalen)
{
 static uint16_t service_classes[] = {
  128
 };

 return (common_profile_create_service_class_id_list(
   buf, eob,
   (uint8_t const *) service_classes,
   sizeof(service_classes)));
}
