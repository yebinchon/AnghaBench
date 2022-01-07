
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;
typedef int int16_t ;


 int MIX_SIZE (int ) ;
 int MIX_UNSIGNED (int ) ;

__attribute__((used)) static int
uaudio_mixer_signext(uint8_t type, int val)
{
 if (!MIX_UNSIGNED(type)) {
  if (MIX_SIZE(type) == 2) {
   val = (int16_t)val;
  } else {
   val = (int8_t)val;
  }
 }
 return (val);
}
