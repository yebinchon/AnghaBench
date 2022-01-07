
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOUR (int) ;
 int HOURSPERDAY ;
 int MIN (int) ;
 int SEC (int) ;
 int** cumdaytab ;
 size_t isleap (int) ;
 int** monthdaytab ;
 int printf (char*,int,int,int,int,int,int,double) ;
 int sunpos (int,int,int,int,int,int,int ,double,double,double*,double*) ;

int
calculatesunlongitude30(int year, int degreeGMToffset, int *ichinesemonths)
{
 int m, d, h;
 double dec;
 double curL, prevL;
 int *pichinesemonths, *monthdays, *cumdays, i;
 int firstmonth330 = -1;

 cumdays = cumdaytab[isleap(year)];
 monthdays = monthdaytab[isleap(year)];
 pichinesemonths = ichinesemonths;

 h = 0;
 sunpos(year - 1, 12, 31,
     -24 * (degreeGMToffset / 360.0),
     HOUR(h), MIN(h), SEC(h), 0.0, 0.0, &prevL, &dec);

 for (m = 1; m <= 12; m++) {
  for (d = 1; d <= monthdays[m]; d++) {
   for (h = 0; h < 4 * HOURSPERDAY; h++) {
    sunpos(year, m, d,
        -24 * (degreeGMToffset / 360.0),
        HOUR(h), MIN(h), SEC(h),
        0.0, 0.0, &curL, &dec);
    if (curL < 180 && prevL > 180) {
     *pichinesemonths = cumdays[m] + d;




         pichinesemonths++;
    } else {
     for (i = 0; i <= 360; i += 30)
      if (curL > i && prevL < i) {
       *pichinesemonths =
           cumdays[m] + d;




       if (i == 330)
        firstmonth330 = *pichinesemonths;
       pichinesemonths++;
      }
    }
    prevL = curL;
   }
  }
 }
 *pichinesemonths = -1;
 return (firstmonth330);
}
