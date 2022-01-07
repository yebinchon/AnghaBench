
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sdp_audio_source_profile {int dummy; } ;
typedef int int32_t ;



__attribute__((used)) static int32_t
audio_source_profile_valid(uint8_t const *data, uint32_t datalen)
{

 if (datalen < sizeof(struct sdp_audio_source_profile))
  return (0);
 return (1);
}
