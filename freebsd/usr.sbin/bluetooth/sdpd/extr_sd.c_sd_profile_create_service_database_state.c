
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int SDP_DATA_UINT32 ;
 int SDP_PUT32 (int ,int const*) ;
 int SDP_PUT8 (int ,int const*) ;
 int provider_get_change_state () ;

__attribute__((used)) static int32_t
sd_profile_create_service_database_state(
  uint8_t *buf, uint8_t const * const eob,
  uint8_t const *data, uint32_t datalen)
{
 uint32_t change_state = provider_get_change_state();

 if (buf + 5 > eob)
  return (-1);

 SDP_PUT8(SDP_DATA_UINT32, buf);
 SDP_PUT32(change_state, buf);

 return (5);
}
