
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_volume {int dummy; } ;
struct gv_softc {int dummy; } ;
typedef struct gv_volume gv_sd ;
typedef struct gv_volume gv_plex ;
typedef struct gv_volume gv_drive ;
struct gctl_req {int dummy; } ;
struct g_geom {struct gv_softc* softc; } ;


 int GV_EVENT_RENAME_DRIVE ;
 int GV_EVENT_RENAME_PLEX ;
 int GV_EVENT_RENAME_SD ;
 int GV_EVENT_RENAME_VOL ;
 int GV_MAXDRIVENAME ;
 int GV_MAXPLEXNAME ;
 int GV_MAXSDNAME ;
 int GV_MAXVOLNAME ;




 int M_WAITOK ;
 int M_ZERO ;
 char* g_malloc (int ,int) ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_param (struct gctl_req*,char*,int *) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 struct gv_volume* gv_find_drive (struct gv_softc*,char*) ;
 struct gv_volume* gv_find_plex (struct gv_softc*,char*) ;
 struct gv_volume* gv_find_sd (struct gv_softc*,char*) ;
 struct gv_volume* gv_find_vol (struct gv_softc*,char*) ;
 int gv_object_type (struct gv_softc*,char*) ;
 int gv_post_event (struct gv_softc*,int ,struct gv_volume*,char*,int,int ) ;
 int strlcpy (char*,char*,int ) ;

void
gv_rename(struct g_geom *gp, struct gctl_req *req)
{
 struct gv_softc *sc;
 struct gv_volume *v;
 struct gv_plex *p;
 struct gv_sd *s;
 struct gv_drive *d;
 char *newname, *object, *name;
 int *flags, type;

 sc = gp->softc;

 flags = gctl_get_paraml(req, "flags", sizeof(*flags));
 if (flags == ((void*)0)) {
  gctl_error(req, "no flags given");
  return;
 }

 newname = gctl_get_param(req, "newname", ((void*)0));
 if (newname == ((void*)0)) {
  gctl_error(req, "no new name given");
  return;
 }

 object = gctl_get_param(req, "object", ((void*)0));
 if (object == ((void*)0)) {
  gctl_error(req, "no object given");
  return;
 }

 type = gv_object_type(sc, object);
 switch (type) {
 case 128:
  v = gv_find_vol(sc, object);
  if (v == ((void*)0)) {
   gctl_error(req, "unknown volume '%s'", object);
   return;
  }
  name = g_malloc(GV_MAXVOLNAME, M_WAITOK | M_ZERO);
  strlcpy(name, newname, GV_MAXVOLNAME);
  gv_post_event(sc, GV_EVENT_RENAME_VOL, v, name, *flags, 0);
  break;
 case 130:
  p = gv_find_plex(sc, object);
  if (p == ((void*)0)) {
   gctl_error(req, "unknown plex '%s'", object);
   return;
  }
  name = g_malloc(GV_MAXPLEXNAME, M_WAITOK | M_ZERO);
  strlcpy(name, newname, GV_MAXPLEXNAME);
  gv_post_event(sc, GV_EVENT_RENAME_PLEX, p, name, *flags, 0);
  break;
 case 129:
  s = gv_find_sd(sc, object);
  if (s == ((void*)0)) {
   gctl_error(req, "unknown subdisk '%s'", object);
   return;
  }
  name = g_malloc(GV_MAXSDNAME, M_WAITOK | M_ZERO);
  strlcpy(name, newname, GV_MAXSDNAME);
  gv_post_event(sc, GV_EVENT_RENAME_SD, s, name, *flags, 0);
  break;
 case 131:
  d = gv_find_drive(sc, object);
  if (d == ((void*)0)) {
   gctl_error(req, "unknown drive '%s'", object);
   return;
  }
  name = g_malloc(GV_MAXDRIVENAME, M_WAITOK | M_ZERO);
  strlcpy(name, newname, GV_MAXDRIVENAME);
  gv_post_event(sc, GV_EVENT_RENAME_DRIVE, d, name, *flags, 0);
  break;
 default:
  gctl_error(req, "unknown object '%s'", object);
  return;
 }
}
