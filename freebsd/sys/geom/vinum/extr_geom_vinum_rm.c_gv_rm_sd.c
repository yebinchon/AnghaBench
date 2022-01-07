
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gv_volume {int dummy; } ;
struct gv_softc {int dummy; } ;
struct gv_sd {TYPE_1__* drive_sc; struct gv_plex* plex_sc; } ;
struct gv_plex {struct gv_volume* vol_sc; int size; int sdcount; } ;
struct TYPE_2__ {int flags; } ;


 int GV_DRIVE_REFERENCED ;
 int KASSERT (int ,char*) ;
 int LIST_REMOVE (struct gv_sd*,int ) ;
 int from_drive ;
 int g_free (struct gv_sd*) ;
 int gv_free_sd (struct gv_sd*) ;
 int gv_plex_size (struct gv_plex*) ;
 int gv_update_vol_size (struct gv_volume*,int ) ;
 int gv_vol_size (struct gv_volume*) ;
 int in_plex ;
 int sd ;

void
gv_rm_sd(struct gv_softc *sc, struct gv_sd *s)
{
 struct gv_plex *p;
 struct gv_volume *v;

 KASSERT(s != ((void*)0), ("gv_rm_sd: NULL s"));

 p = s->plex_sc;
 v = ((void*)0);


 if (p != ((void*)0)) {
  LIST_REMOVE(s, in_plex);
  s->plex_sc = ((void*)0);
  p->sdcount--;

  p->size = gv_plex_size(p);
  v = p->vol_sc;
  if (v != ((void*)0)) {

   gv_update_vol_size(v, gv_vol_size(v));
  }
 }
 if (s->drive_sc && !(s->drive_sc->flags & GV_DRIVE_REFERENCED))
  LIST_REMOVE(s, from_drive);
 LIST_REMOVE(s, sd);
 gv_free_sd(s);
 g_free(s);
}
