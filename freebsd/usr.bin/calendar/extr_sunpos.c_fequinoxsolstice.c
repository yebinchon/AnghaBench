
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANGLE (double,double) ;
 int DEBUG2 (int,int,int,int ,int ,double,double,int,int) ;
 int FSECSPERDAY ;
 int HOUR (int) ;
 int HOURSPERDAY ;
 int MIN (int) ;
 int SEC (int) ;
 int SECSPERDAY ;
 int SHOUR (int) ;
 scalar_t__ SIGN (double) ;
 int SMIN (int) ;
 int SSEC (int) ;
 int** cumdaytab ;
 size_t isleap (int) ;
 int sunpos (int,int,int,double,int ,int ,int ,double,double,double*,double*) ;

void
fequinoxsolstice(int year, double UTCoffset, double *equinoxdays, double *solsticedays)
{
 double dec, prevdec, L;
 int h, d, prevangle, angle;
 int found = 0;

 double decleft, decright, decmiddle;
 int dial, s;

 int *cumdays;
 cumdays = cumdaytab[isleap(year)];






 for (d = 18; d < 31; d++) {

  sunpos(year, 3, d, UTCoffset, 0, 0, 0, 0.0, 0.0, &L, &decleft);
  sunpos(year, 3, d + 1, UTCoffset, 0, 0, 0, 0.0, 0.0,
      &L, &decright);

  if (SIGN(decleft) == SIGN(decright))
   continue;

  dial = SECSPERDAY;
  s = SECSPERDAY / 2;
  while (s > 0) {


   sunpos(year, 3, d, UTCoffset,
       SHOUR(dial), SMIN(dial), SSEC(dial),
       0.0, 0.0, &L, &decmiddle);

   if (SIGN(decleft) == SIGN(decmiddle)) {
    decleft = decmiddle;
    dial += s;
   } else {
    decright = decmiddle;
    dial -= s;
   }




   s /= 2;
  }
  equinoxdays[0] = 1 + cumdays[3] + d + (dial / FSECSPERDAY);
  break;
 }





 for (d = 18; d < 31; d++) {

  sunpos(year, 9, d, UTCoffset, 0, 0, 0, 0.0, 0.0, &L, &decleft);
  sunpos(year, 9, d + 1, UTCoffset, 0, 0, 0, 0.0, 0.0,
      &L, &decright);

  if (SIGN(decleft) == SIGN(decright))
   continue;

  dial = SECSPERDAY;
  s = SECSPERDAY / 2;
  while (s > 0) {


   sunpos(year, 9, d, UTCoffset,
       SHOUR(dial), SMIN(dial), SSEC(dial),
       0.0, 0.0, &L, &decmiddle);

   if (SIGN(decleft) == SIGN(decmiddle)) {
    decleft = decmiddle;
    dial += s;
   } else {
    decright = decmiddle;
    dial -= s;
   }




   s /= 2;
  }
  equinoxdays[1] = 1 + cumdays[9] + d + (dial / FSECSPERDAY);
  break;
 }






 found = 0;
 prevdec = 0;
 prevangle = 1;
 for (d = 18; d < 31; d++) {
  for (h = 0; h < 4 * HOURSPERDAY; h++) {
   sunpos(year, 6, d, UTCoffset, HOUR(h), MIN(h), SEC(h),
       0.0, 0.0, &L, &dec);
   angle = ANGLE(prevdec, dec);
   if (prevangle != angle) {




    solsticedays[0] = 1 + cumdays[6] + d +
        ((h / 4.0) / 24.0);
    found = 1;
    break;
   }
   prevdec = dec;
   prevangle = angle;
  }
  if (found)
   break;
 }






 found = 0;
 prevdec = 360;
 prevangle = -1;
 for (d = 18; d < 31; d++) {
  for (h = 0; h < 4 * HOURSPERDAY; h++) {
   sunpos(year, 12, d, UTCoffset, HOUR(h), MIN(h), SEC(h),
       0.0, 0.0, &L, &dec);
   angle = ANGLE(prevdec, dec);
   if (prevangle != angle) {




    solsticedays[1] = 1 + cumdays[12] + d +
        ((h / 4.0) / 24.0);
    found = 1;
    break;
   }
   prevdec = dec;
   prevangle = angle;
  }
  if (found)
   break;
 }

 return;
}
