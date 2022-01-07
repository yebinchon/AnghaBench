
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int SDP_DATA_STR8 ;
 int SDP_PUT8 (int,int const*) ;
 int memcpy (int const*,int const*,int) ;

int32_t
common_profile_create_string8(
  uint8_t *buf, uint8_t const * const eob,
  uint8_t const *data, uint32_t datalen)
{
 if (datalen == 0 || datalen > 0xff || buf + 2 + datalen > eob)
  return (-1);

 SDP_PUT8(SDP_DATA_STR8, buf);
 SDP_PUT8(datalen, buf);
 memcpy(buf, data, datalen);

 return (2 + datalen);
}
