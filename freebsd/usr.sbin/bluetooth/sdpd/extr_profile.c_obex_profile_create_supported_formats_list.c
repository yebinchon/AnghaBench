
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int SDP_DATA_SEQ8 ;
 int SDP_DATA_UINT8 ;
 int SDP_PUT8 (int,int const*) ;

int32_t
obex_profile_create_supported_formats_list(
  uint8_t *buf, uint8_t const * const eob,
  uint8_t const *data, uint32_t datalen)
{
 int32_t len = 2 * datalen;

 if (len <= 0 || len > 0xff || buf + 2 + len > eob)
  return (-1);

 SDP_PUT8(SDP_DATA_SEQ8, buf);
 SDP_PUT8(len, buf);

 for (; datalen > 0; datalen --) {
  SDP_PUT8(SDP_DATA_UINT8, buf);
  SDP_PUT8(*data++, buf);
 }

 return (2 + len);
}
