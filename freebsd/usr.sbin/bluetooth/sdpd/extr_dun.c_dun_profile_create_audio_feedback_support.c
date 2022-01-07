
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int uint32_t ;
typedef TYPE_1__* sdp_dun_profile_p ;
typedef TYPE_2__* provider_p ;
typedef int int32_t ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int audio_feedback_support; } ;


 int SDP_DATA_BOOL ;
 int SDP_PUT8 (int ,int const*) ;

__attribute__((used)) static int32_t
dun_profile_create_audio_feedback_support(
  uint8_t *buf, uint8_t const * const eob,
  uint8_t const *data, uint32_t datalen)
{
 provider_p provider = (provider_p) data;
 sdp_dun_profile_p dun = (sdp_dun_profile_p) provider->data;

 if (buf + 2 > eob)
  return (-1);

 SDP_PUT8(SDP_DATA_BOOL, buf);
 SDP_PUT8(dun->audio_feedback_support, buf);

 return (2);
}
