
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GV_VOL_DOWN ;
 int GV_VOL_UP ;
 int strcmp (char*,char*) ;

int
gv_volstatei(char *buf)
{
 if (!strcmp(buf, "up"))
  return (GV_VOL_UP);
 else
  return (GV_VOL_DOWN);
}
