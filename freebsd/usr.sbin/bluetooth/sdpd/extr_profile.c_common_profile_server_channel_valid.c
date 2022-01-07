
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;



int32_t
common_profile_server_channel_valid(uint8_t const *data, uint32_t datalen)
{
 if (data[0] < 1 || data[0] > 30)
  return (0);

 return (1);
}
