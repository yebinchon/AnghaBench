
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int uint32_t ;
typedef TYPE_1__* provider_p ;
typedef int int32_t ;
struct TYPE_2__ {int handle; } ;


 int SDP_DATA_UINT32 ;
 int SDP_PUT32 (int ,int const*) ;
 int SDP_PUT8 (int ,int const*) ;

int32_t
common_profile_create_service_record_handle(
 uint8_t *buf, uint8_t const * const eob,
 uint8_t const *data, uint32_t datalen)
{
 if (buf + 5 > eob)
  return (-1);

 SDP_PUT8(SDP_DATA_UINT32, buf);
 SDP_PUT32(((provider_p) data)->handle, buf);

 return (5);
}
