
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_volume {int * last_read_plex; int plexcount; int provider; } ;
struct gv_plex {scalar_t__ state; int vinumconf; int volume; struct gv_volume* vol_sc; int name; } ;


 int GV_ERR_ISBUSY ;
 int GV_FLAG_F ;
 int GV_MAXVOLNAME ;
 scalar_t__ GV_PLEX_UP ;
 int G_VINUM_DEBUG (int,char*,int ,...) ;
 int LIST_REMOVE (struct gv_plex*,int ) ;
 int g_topology_assert () ;
 scalar_t__ gv_provider_is_open (int ) ;
 int gv_save_config (int ) ;
 int gv_update_vol_size (struct gv_volume*,int ) ;
 int gv_vol_size (struct gv_volume*) ;
 int in_volume ;
 int memset (int ,int ,int ) ;

int
gv_detach_plex(struct gv_plex *p, int flags)
{
 struct gv_volume *v;

 g_topology_assert();
 v = p->vol_sc;

 if (v == ((void*)0)) {
  G_VINUM_DEBUG(1, "unable to detach %s: already detached",
      p->name);
  return (0);
 }




 if (!(flags & GV_FLAG_F) && (gv_provider_is_open(v->provider) ||
     p->state == GV_PLEX_UP)) {
  G_VINUM_DEBUG(1, "unable to detach %s: volume %s is busy",
      p->name, p->volume);
  return (GV_ERR_ISBUSY);
 }
 v->plexcount--;

 v->last_read_plex = ((void*)0);
 LIST_REMOVE(p, in_volume);
 p->vol_sc = ((void*)0);
 memset(p->volume, 0, GV_MAXVOLNAME);
 gv_update_vol_size(v, gv_vol_size(v));
 gv_save_config(p->vinumconf);
 return (0);
}
