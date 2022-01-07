
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int int32_t ;


 int SDP_DATA_SEQ8 ;
 int SDP_DATA_UUID16 ;
 int SDP_PUT16 (int const,int const*) ;
 int SDP_PUT8 (int,int const*) ;

int32_t
common_profile_create_service_class_id_list(
  uint8_t *buf, uint8_t const * const eob,
  uint8_t const *data, uint32_t datalen)
{
 int32_t len = 3 * (datalen >>= 1);

 if (len <= 0 || len > 0xff || buf + 2 + len > eob)
  return (-1);

 SDP_PUT8(SDP_DATA_SEQ8, buf);
 SDP_PUT8(len, buf);

 for (; datalen > 0; datalen --) {
  SDP_PUT8(SDP_DATA_UUID16, buf);
  SDP_PUT16(*((uint16_t const *)data), buf);
  data += sizeof(uint16_t);
 }

 return (2 + len);
}
