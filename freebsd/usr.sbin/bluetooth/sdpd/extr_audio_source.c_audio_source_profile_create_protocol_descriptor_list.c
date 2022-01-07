
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int uint32_t ;
typedef TYPE_1__* sdp_audio_source_profile_p ;
typedef TYPE_2__* provider_p ;
typedef int int32_t ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int protover; int psm; } ;


 int SDP_DATA_SEQ8 ;
 int SDP_DATA_UINT16 ;
 int SDP_DATA_UUID16 ;
 int SDP_PUT16 (int ,int const*) ;
 int SDP_PUT8 (int,int const*) ;
 int SDP_UUID_PROTOCOL_AVDTP ;
 int SDP_UUID_PROTOCOL_L2CAP ;

__attribute__((used)) static int32_t
audio_source_profile_create_protocol_descriptor_list(
    uint8_t *buf, uint8_t const *const eob,
    uint8_t const *data, uint32_t datalen)
{
 provider_p provider = (provider_p) data;
 sdp_audio_source_profile_p audio_source = (sdp_audio_source_profile_p) provider->data;

 if (buf + 18 > eob)
  return (-1);

 SDP_PUT8(SDP_DATA_SEQ8, buf);
 SDP_PUT8(16, buf);

 SDP_PUT8(SDP_DATA_SEQ8, buf);
 SDP_PUT8(6, buf);

 SDP_PUT8(SDP_DATA_UUID16, buf);
 SDP_PUT16(SDP_UUID_PROTOCOL_L2CAP, buf);

 SDP_PUT8(SDP_DATA_UINT16, buf);
 SDP_PUT16(audio_source->psm, buf);

 SDP_PUT8(SDP_DATA_SEQ8, buf);
 SDP_PUT8(6, buf);

 SDP_PUT8(SDP_DATA_UUID16, buf);
 SDP_PUT16(SDP_UUID_PROTOCOL_AVDTP, buf);

 SDP_PUT8(SDP_DATA_UINT16, buf);
 SDP_PUT16(audio_source->protover, buf);

 return (18);
}
