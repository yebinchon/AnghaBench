
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_char ;


 int EINVAL ;
 int midi_instroff ;
 int midisynth_writeraw (void*,int*,int) ;

__attribute__((used)) static int
midisynth_setinstr(void *n, uint8_t chn, uint16_t instr)
{
 u_char c[2];

 if (instr > 127 || chn > 15)
  return EINVAL;

 c[0] = 0xc0 | (chn & 0x0f);
 c[1] = instr + midi_instroff;

 return midisynth_writeraw(n, c, 2);
}
