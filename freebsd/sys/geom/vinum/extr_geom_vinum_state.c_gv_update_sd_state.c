
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_sd {int state; int flags; int * plex_sc; int name; struct gv_drive* drive_sc; } ;
struct gv_drive {scalar_t__ state; } ;


 scalar_t__ GV_DRIVE_UP ;
 int GV_SD_CANGOUP ;
 int GV_SD_DOWN ;
 int GV_SD_NEWBORN ;
 void* GV_SD_STALE ;
 void* GV_SD_UP ;
 int G_VINUM_DEBUG (int,char*,int ,int ,int ) ;
 int KASSERT (int ,char*) ;
 int gv_sdstate (int) ;
 int gv_update_plex_state (int *) ;

void
gv_update_sd_state(struct gv_sd *s)
{
 struct gv_drive *d;
 int oldstate;

 KASSERT(s != ((void*)0), ("gv_update_sd_state: NULL s"));
 d = s->drive_sc;
 KASSERT(d != ((void*)0), ("gv_update_sd_state: NULL d"));

 oldstate = s->state;


 if (d->state != GV_DRIVE_UP) {
  s->state = GV_SD_DOWN;

 } else if (s->flags & GV_SD_NEWBORN) {
  s->state = GV_SD_UP;
  s->flags &= ~GV_SD_NEWBORN;
 } else if (s->state != GV_SD_UP) {
  if (s->flags & GV_SD_CANGOUP) {
   s->state = GV_SD_UP;
   s->flags &= ~GV_SD_CANGOUP;
  } else
   s->state = GV_SD_STALE;
 } else
  s->state = GV_SD_UP;

 if (s->state != oldstate)
  G_VINUM_DEBUG(1, "subdisk %s state change: %s -> %s", s->name,
      gv_sdstate(oldstate), gv_sdstate(s->state));


 if (s->plex_sc != ((void*)0))
  gv_update_plex_state(s->plex_sc);
}
