
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int SDP_DATA_SEQ8 ;
 int SDP_DATA_UUID16 ;
 int SDP_PUT16 (int ,int const*) ;
 int SDP_PUT8 (int,int const*) ;
 int SDP_UUID_PROTOCOL_L2CAP ;
 int SDP_UUID_PROTOCOL_SDP ;

__attribute__((used)) static int32_t
sd_profile_create_protocol_descriptor_list(
  uint8_t *buf, uint8_t const * const eob,
  uint8_t const *data, uint32_t datalen)
{
 if (buf + 12 > eob)
  return (-1);

 SDP_PUT8(SDP_DATA_SEQ8, buf);
 SDP_PUT8(10, buf);

 SDP_PUT8(SDP_DATA_SEQ8, buf);
 SDP_PUT8(3, buf);
 SDP_PUT8(SDP_DATA_UUID16, buf);
 SDP_PUT16(SDP_UUID_PROTOCOL_L2CAP, buf);

 SDP_PUT8(SDP_DATA_SEQ8, buf);
 SDP_PUT8(3, buf);
 SDP_PUT8(SDP_DATA_UUID16, buf);
 SDP_PUT16(SDP_UUID_PROTOCOL_SDP, buf);

 return (12);
}
