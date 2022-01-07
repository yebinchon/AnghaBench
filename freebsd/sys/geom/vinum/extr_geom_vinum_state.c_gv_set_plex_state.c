
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_volume {int plexcount; } ;
struct gv_plex {int state; int vinumconf; struct gv_volume* vol_sc; } ;


 int GV_ERR_SETSTATE ;



 int GV_SETSTATE_CONFIG ;
 int GV_SETSTATE_FORCE ;
 int KASSERT (int ,char*) ;
 int gv_plexdown (struct gv_volume*) ;
 int gv_save_config (int ) ;
 int gv_update_plex_state (struct gv_plex*) ;
 int gv_update_vol_state (struct gv_volume*) ;

int
gv_set_plex_state(struct gv_plex *p, int newstate, int flags)
{
 struct gv_volume *v;
 int oldstate, plexdown;

 KASSERT(p != ((void*)0), ("gv_set_plex_state: NULL p"));

 oldstate = p->state;
 v = p->vol_sc;
 plexdown = 0;

 if (newstate == oldstate)
  return (0);

 switch (newstate) {
 case 128:

  gv_update_plex_state(p);
  if (p->state != 128 && !(flags & GV_SETSTATE_FORCE))
   return (GV_ERR_SETSTATE);
  p->state = newstate;
  break;
 case 129:




  if (v != ((void*)0)) {

   plexdown = gv_plexdown(v);
   if ((v->plexcount == 1 ||
       (v->plexcount - plexdown == 1)) &&
       ((flags & GV_SETSTATE_FORCE) == 0))
    return (GV_ERR_SETSTATE);
  }
  p->state = newstate;
  break;
 case 130:

  if (flags & GV_SETSTATE_FORCE)
   p->state = newstate;
  break;
 }


 if (v != ((void*)0))
  gv_update_vol_state(v);


 if (flags & GV_SETSTATE_CONFIG)
  gv_save_config(p->vinumconf);
 return (0);
}
