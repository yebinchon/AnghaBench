
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_char ;


 int EINVAL ;
 int midisynth_writeraw (void*,int*,int) ;

__attribute__((used)) static int
midisynth_killnote(void *n, uint8_t chn, uint8_t note, uint8_t vel)
{
 u_char c[3];


 if (note > 127 || chn > 15)
  return (EINVAL);

 if (vel > 127)
  vel = 127;

 if (vel == 64) {
  c[0] = 0x90 | (chn & 0x0f);
  c[1] = (u_char)note;
  c[2] = 0;
 } else {
  c[0] = 0x80 | (chn & 0x0f);
  c[1] = (u_char)note;
  c[2] = (u_char)vel;
 }

 return midisynth_writeraw(n, c, 3);
}
