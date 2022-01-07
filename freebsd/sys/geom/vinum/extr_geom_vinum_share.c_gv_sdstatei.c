
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GV_SD_DOWN ;
 int GV_SD_INITIALIZING ;
 int GV_SD_REVIVING ;
 int GV_SD_STALE ;
 int GV_SD_UP ;
 int strcmp (char*,char*) ;

int
gv_sdstatei(char *buf)
{
 if (!strcmp(buf, "up"))
  return (GV_SD_UP);
 else if (!strcmp(buf, "reviving"))
  return (GV_SD_REVIVING);
 else if (!strcmp(buf, "initializing"))
  return (GV_SD_INITIALIZING);
 else if (!strcmp(buf, "stale"))
  return (GV_SD_STALE);
 else
  return (GV_SD_DOWN);
}
