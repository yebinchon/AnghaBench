
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int snprintf (char*,int,char*,int) ;

const char *rate2str(int rate)
{
 static char buf[30];

 if (rate == 11)
  return "5.5";
 snprintf(buf, sizeof(buf), "%u", rate/2);
 return buf;
}
