
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int security_descr ;
typedef int int32_t ;


 int SDP_DATA_UINT16 ;
 int SDP_PUT16 (int ,int const*) ;
 int SDP_PUT8 (int ,int const*) ;
 int memcpy (int *,int const*,int) ;

int32_t
bnep_profile_create_security_description(
  uint8_t *buf, uint8_t const * const eob,
  uint8_t const *data, uint32_t datalen)
{
 uint16_t security_descr;

 if (datalen != 2 || buf + 3 > eob)
  return (-1);

 memcpy(&security_descr, data, sizeof(security_descr));

 SDP_PUT8(SDP_DATA_UINT16, buf);
 SDP_PUT16(security_descr, buf);

        return (3);
}
