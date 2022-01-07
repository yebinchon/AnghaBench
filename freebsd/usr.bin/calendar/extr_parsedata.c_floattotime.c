
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double SECSPERDAY ;
 int SECSPERHOUR ;
 int SECSPERMINUTE ;
 scalar_t__ floor (double) ;
 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static char *
floattotime(double f)
{
 static char buf[100];
 int hh, mm, ss, i;

 f -= floor(f);
 i = f * SECSPERDAY;

 hh = i / SECSPERHOUR;
 i %= SECSPERHOUR;
 mm = i / SECSPERMINUTE;
 i %= SECSPERMINUTE;
 ss = i;

 sprintf(buf, "%02d:%02d:%02d", hh, mm, ss);
 return (buf);
}
