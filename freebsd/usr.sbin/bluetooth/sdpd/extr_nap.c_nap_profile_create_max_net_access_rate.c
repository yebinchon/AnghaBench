
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int uint32_t ;
typedef TYPE_1__* sdp_nap_profile_p ;
typedef TYPE_2__* provider_p ;
typedef int int32_t ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int max_net_access_rate; } ;


 int SDP_DATA_UINT16 ;
 int SDP_PUT16 (int ,int const*) ;
 int SDP_PUT8 (int ,int const*) ;

__attribute__((used)) static int32_t
nap_profile_create_max_net_access_rate(
  uint8_t *buf, uint8_t const * const eob,
  uint8_t const *data, uint32_t datalen)
{
 provider_p provider = (provider_p) data;
 sdp_nap_profile_p nap = (sdp_nap_profile_p) provider->data;

 if (buf + 3 > eob)
  return (-1);

 SDP_PUT8(SDP_DATA_UINT16, buf);
 SDP_PUT16(nap->max_net_access_rate, buf);

 return (3);
}
