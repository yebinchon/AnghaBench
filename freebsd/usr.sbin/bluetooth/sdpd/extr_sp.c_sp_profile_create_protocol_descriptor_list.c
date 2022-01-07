
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef TYPE_1__* sdp_sp_profile_p ;
typedef TYPE_2__* provider_p ;
typedef int int32_t ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int server_channel; } ;


 int rfcomm_profile_create_protocol_descriptor_list (int *,int const* const,int const*,int) ;

__attribute__((used)) static int32_t
sp_profile_create_protocol_descriptor_list(
  uint8_t *buf, uint8_t const * const eob,
  uint8_t const *data, uint32_t datalen)
{
 provider_p provider = (provider_p) data;
 sdp_sp_profile_p sp = (sdp_sp_profile_p) provider->data;

 return (rfcomm_profile_create_protocol_descriptor_list(
   buf, eob,
   (uint8_t const *) &sp->server_channel, 1));
}
