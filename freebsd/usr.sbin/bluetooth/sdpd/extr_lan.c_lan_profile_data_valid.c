
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef TYPE_1__* sdp_lan_profile_p ;
typedef int int32_t ;
struct TYPE_2__ {int server_channel; int ip_subnet_radius; } ;



__attribute__((used)) static int32_t
lan_profile_data_valid(uint8_t const *data, uint32_t datalen)
{
 sdp_lan_profile_p lan = (sdp_lan_profile_p) data;

 if (lan->server_channel < 1 ||
     lan->server_channel > 30 ||
     lan->ip_subnet_radius > 32)
  return (0);

 return (1);
}
