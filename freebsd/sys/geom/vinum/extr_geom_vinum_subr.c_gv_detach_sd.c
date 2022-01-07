
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_sd {scalar_t__ state; int vinumconf; int plex; struct gv_plex* plex_sc; int name; } ;
struct gv_plex {scalar_t__ state; int sddetached; } ;


 int GV_ERR_ISBUSY ;
 int GV_FLAG_F ;
 int GV_MAXPLEXNAME ;
 scalar_t__ GV_PLEX_DEGRADED ;
 scalar_t__ GV_SD_UP ;
 int G_VINUM_DEBUG (int,char*,int ,...) ;
 int LIST_REMOVE (struct gv_sd*,int ) ;
 int g_topology_assert () ;
 int gv_save_config (int ) ;
 int in_plex ;
 int memset (int ,int ,int ) ;

int
gv_detach_sd(struct gv_sd *s, int flags)
{
 struct gv_plex *p;

 g_topology_assert();
 p = s->plex_sc;

 if (p == ((void*)0)) {
  G_VINUM_DEBUG(1, "unable to detach %s: already detached",
      s->name);
  return (0);
 }





 if (!(flags & GV_FLAG_F) && ((p->state > GV_PLEX_DEGRADED) ||
     ((p->state == GV_PLEX_DEGRADED) && (s->state == GV_SD_UP)))) {
      G_VINUM_DEBUG(1, "unable to detach %s: plex %s is busy",
      s->name, s->plex);
  return (GV_ERR_ISBUSY);
 }

 LIST_REMOVE(s, in_plex);
 s->plex_sc = ((void*)0);
 memset(s->plex, 0, GV_MAXPLEXNAME);
 p->sddetached++;
 gv_save_config(s->vinumconf);
 return (0);
}
