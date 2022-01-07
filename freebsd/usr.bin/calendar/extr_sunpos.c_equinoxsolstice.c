
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fequinoxsolstice (int,double,double*,double*) ;
 int round (double) ;

void
equinoxsolstice(int year, double UTCoffset, int *equinoxdays, int *solsticedays)
{
 double fe[2], fs[2];

 fequinoxsolstice(year, UTCoffset, fe, fs);
 equinoxdays[0] = round(fe[0]);
 equinoxdays[1] = round(fe[1]);
 solsticedays[0] = round(fs[0]);
 solsticedays[1] = round(fs[1]);
}
