
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GV_DRIVE_DOWN ;
 int GV_DRIVE_UP ;
 int strcmp (char*,char*) ;

int
gv_drivestatei(char *buf)
{
 if (!strcmp(buf, "up"))
  return (GV_DRIVE_UP);
 else
  return (GV_DRIVE_DOWN);
}
