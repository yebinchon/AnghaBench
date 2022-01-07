
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int SDP_DATA_SEQ8 ;
 int SDP_DATA_UINT16 ;
 int SDP_PUT16 (int,int const*) ;
 int SDP_PUT8 (int,int const*) ;

__attribute__((used)) static int32_t
sd_profile_create_version_number_list(
  uint8_t *buf, uint8_t const * const eob,
  uint8_t const *data, uint32_t datalen)
{
 if (buf + 5 > eob)
  return (-1);

 SDP_PUT8(SDP_DATA_SEQ8, buf);
 SDP_PUT8(3, buf);
 SDP_PUT8(SDP_DATA_UINT16, buf);
 SDP_PUT16(0x0100, buf);

 return (5);
}
