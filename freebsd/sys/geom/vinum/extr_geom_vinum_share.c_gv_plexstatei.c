
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GV_PLEX_DEGRADED ;
 int GV_PLEX_DOWN ;
 int GV_PLEX_GROWABLE ;
 int GV_PLEX_INITIALIZING ;
 int GV_PLEX_UP ;
 int strcmp (char*,char*) ;

int
gv_plexstatei(char *buf)
{
 if (!strcmp(buf, "up"))
  return (GV_PLEX_UP);
 else if (!strcmp(buf, "initializing"))
  return (GV_PLEX_INITIALIZING);
 else if (!strcmp(buf, "degraded"))
  return (GV_PLEX_DEGRADED);
 else if (!strcmp(buf, "growable"))
  return (GV_PLEX_GROWABLE);
 else
  return (GV_PLEX_DOWN);
}
