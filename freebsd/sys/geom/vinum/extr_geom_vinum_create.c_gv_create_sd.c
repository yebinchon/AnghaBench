
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gv_softc {int subdisks; } ;
struct gv_sd {int flags; struct gv_softc* vinumconf; TYPE_1__* drive_sc; int name; int plex; int drive; } ;
struct gv_plex {int flags; int name; } ;
struct gv_drive {int flags; int name; } ;
struct TYPE_2__ {int flags; } ;


 int GV_DRIVE_REFERENCED ;
 int GV_ERR_CREATE ;
 int GV_PLEX_NEWBORN ;
 int GV_SD_NEWBORN ;
 int GV_SD_TASTED ;
 int G_VINUM_DEBUG (int ,char*,int ,int ) ;
 int KASSERT (int ,char*) ;
 int LIST_INSERT_HEAD (int *,struct gv_sd*,int ) ;
 int LIST_REMOVE (struct gv_sd*,int ) ;
 int M_WAITOK ;
 int M_ZERO ;
 int from_drive ;
 int g_free (struct gv_sd*) ;
 struct gv_drive* g_malloc (int,int) ;
 int gv_create_drive (struct gv_softc*,struct gv_drive*) ;
 struct gv_drive* gv_find_drive (struct gv_softc*,int ) ;
 struct gv_plex* gv_find_plex (struct gv_softc*,int ) ;
 int gv_free_sd (struct gv_sd*) ;
 int gv_rm_plex (struct gv_softc*,struct gv_plex*) ;
 scalar_t__ gv_sd_to_drive (struct gv_sd*,struct gv_drive*) ;
 scalar_t__ gv_sd_to_plex (struct gv_sd*,struct gv_plex*) ;
 int sd ;
 int strlcpy (int ,int ,int) ;

int
gv_create_sd(struct gv_softc *sc, struct gv_sd *s)
{
 struct gv_plex *p;
 struct gv_drive *d;

 KASSERT(s != ((void*)0), ("gv_create_sd: NULL s"));


 d = gv_find_drive(sc, s->drive);
 if (d == ((void*)0)) {





  if (s->flags & GV_SD_TASTED) {
   d = g_malloc(sizeof(struct gv_drive),
       M_WAITOK | M_ZERO);
   d->flags |= GV_DRIVE_REFERENCED;
   strlcpy(d->name, s->drive, sizeof(d->name));
   gv_create_drive(sc, d);
  } else {
   G_VINUM_DEBUG(0, "create sd '%s': drive '%s' not found",
       s->name, s->drive);
   g_free(s);
   return (GV_ERR_CREATE);
  }
 }


 p = gv_find_plex(sc, s->plex);
 if (p == ((void*)0)) {
  G_VINUM_DEBUG(0, "create sd '%s': plex '%s' not found",
      s->name, s->plex);
  g_free(s);
  return (GV_ERR_CREATE);
 }





 if (gv_sd_to_drive(s, d) != 0) {
  g_free(s);
  return (GV_ERR_CREATE);
 }





 if (gv_sd_to_plex(s, p) != 0) {
  G_VINUM_DEBUG(0, "unable to give sd '%s' to plex '%s'",
      s->name, p->name);
  if (s->drive_sc && !(s->drive_sc->flags & GV_DRIVE_REFERENCED))
   LIST_REMOVE(s, from_drive);
  gv_free_sd(s);
  g_free(s);




  if (!(p->flags & GV_PLEX_NEWBORN))
   return (GV_ERR_CREATE);
  gv_rm_plex(sc, p);
  return (GV_ERR_CREATE);
 }
 s->flags |= GV_SD_NEWBORN;

 s->vinumconf = sc;
 LIST_INSERT_HEAD(&sc->subdisks, s, sd);

 return (0);
}
