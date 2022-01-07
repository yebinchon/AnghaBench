
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DENOM_MULT ;
 int FILLTIME ;
 int LEGATO ;
 int NUM_MULT ;
 int fill ;
 int * pitchtab ;
 int printf (char*,int,int,int) ;
 int rest (int) ;
 int tone (int ,int) ;
 int whole ;

__attribute__((used)) static void
playtone(int pitch, int value, int sustain)
{
 int sound, silence, snum = 1, sdenom = 1;


 for (; sustain; sustain--) {

  snum *= NUM_MULT;
  sdenom *= DENOM_MULT;
 }

 if (value == 0 || sdenom == 0)
  return;

 if (pitch == -1)
  rest(whole * snum / (value * sdenom));
 else {
  sound = (whole * snum) / (value * sdenom)
   - (whole * (FILLTIME - fill)) / (value * FILLTIME);
  silence = whole * (FILLTIME-fill) * snum / (FILLTIME * value * sdenom);






  tone(pitchtab[pitch], sound);
  if (fill != LEGATO)
   rest(silence);
 }
}
