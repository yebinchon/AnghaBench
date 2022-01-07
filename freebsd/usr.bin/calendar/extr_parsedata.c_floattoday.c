
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double SECSPERDAY ;
 int SECSPERHOUR ;
 int SECSPERMINUTE ;
 int** cumdaytab ;
 double floor (double) ;
 size_t isleap (int) ;
 int sprintf (char*,char*,int,int,int,int,int) ;

__attribute__((used)) static char *
floattoday(int year, double f)
{
 static char buf[100];
 int i, m, d, hh, mm, ss;
 int *cumdays = cumdaytab[isleap(year)];

 for (i = 0; 1 + cumdays[i] < f; i++)
  ;
 m = --i;
 d = floor(f - 1 - cumdays[i]);
 f -= floor(f);
 i = f * SECSPERDAY;

 hh = i / SECSPERHOUR;
 i %= SECSPERHOUR;
 mm = i / SECSPERMINUTE;
 i %= SECSPERMINUTE;
 ss = i;

 sprintf(buf, "%02d-%02d %02d:%02d:%02d", m, d, hh, mm, ss);
 return (buf);
}
