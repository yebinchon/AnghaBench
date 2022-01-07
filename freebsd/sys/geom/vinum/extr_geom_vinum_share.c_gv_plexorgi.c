
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GV_PLEX_CONCAT ;
 int GV_PLEX_DISORG ;
 int GV_PLEX_RAID5 ;
 int GV_PLEX_STRIPED ;
 int strcmp (char*,char*) ;

int
gv_plexorgi(char *buf)
{
 if (!strcmp(buf, "concat"))
  return (GV_PLEX_CONCAT);
 else if (!strcmp(buf, "striped"))
  return (GV_PLEX_STRIPED);
 else if (!strcmp(buf, "raid5"))
  return (GV_PLEX_RAID5);
 else
  return (GV_PLEX_DISORG);
}
