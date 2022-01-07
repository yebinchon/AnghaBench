
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_char ;


 int EINVAL ;
 int midisynth_writeraw (void*,int*,int) ;

__attribute__((used)) static int
midisynth_controller(void *n, uint8_t chn, uint8_t ctrlnum, uint16_t val)
{
 u_char c[3];

 if (ctrlnum > 127 || chn > 15)
  return EINVAL;

 c[0] = 0xb0 | (chn & 0x0f);
 c[1] = ctrlnum;
 c[2] = val;
 return midisynth_writeraw(n, c, 3);
}
