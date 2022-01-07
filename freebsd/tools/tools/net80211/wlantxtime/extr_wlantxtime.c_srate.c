
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int snprintf (char*,int,char*,int) ;

const char *
srate(int rate)
{
 static char buf[32];
 if (rate & 1)
  snprintf(buf, sizeof(buf), "%u.5", rate/2);
 else
  snprintf(buf, sizeof(buf), "%u", rate/2);
 return buf;
}
