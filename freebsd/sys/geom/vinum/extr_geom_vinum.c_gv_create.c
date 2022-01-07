
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_volume {int name; int device; } ;
struct gv_softc {int name; int device; } ;
struct gv_sd {int name; int device; } ;
struct gv_plex {int name; int device; } ;
struct gv_drive {int name; int device; } ;
struct gctl_req {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_geom {struct gv_volume* softc; } ;
typedef int buf ;


 int GV_EVENT_CREATE_DRIVE ;
 int GV_EVENT_CREATE_PLEX ;
 int GV_EVENT_CREATE_SD ;
 int GV_EVENT_CREATE_VOLUME ;
 int GV_EVENT_SAVE_CONFIG ;
 int GV_EVENT_SETUP_OBJECTS ;
 int GV_FLAG_F ;
 int M_WAITOK ;
 int M_ZERO ;
 int bcopy (struct gv_volume*,struct gv_volume*,int) ;
 struct gv_volume* g_malloc (int,int) ;
 struct g_provider* g_provider_by_name (int ) ;
 int g_topology_assert () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 void* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int * gv_find_drive (struct gv_volume*,int ) ;
 int * gv_find_drive_device (struct gv_volume*,int ) ;
 int * gv_find_plex (struct gv_volume*,int ) ;
 int * gv_find_sd (struct gv_volume*,int ) ;
 int * gv_find_vol (struct gv_volume*,int ) ;
 int gv_post_event (struct gv_volume*,int ,struct gv_volume*,int *,int ,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
gv_create(struct g_geom *gp, struct gctl_req *req)
{
 struct gv_softc *sc;
 struct gv_drive *d, *d2;
 struct gv_plex *p, *p2;
 struct gv_sd *s, *s2;
 struct gv_volume *v, *v2;
 struct g_provider *pp;
 int error, i, *drives, *flags, *plexes, *subdisks, *volumes;
 char buf[20];

 g_topology_assert();

 sc = gp->softc;


 volumes = gctl_get_paraml(req, "volumes", sizeof(*volumes));
 plexes = gctl_get_paraml(req, "plexes", sizeof(*plexes));
 subdisks = gctl_get_paraml(req, "subdisks", sizeof(*subdisks));
 drives = gctl_get_paraml(req, "drives", sizeof(*drives));
 if (volumes == ((void*)0) || plexes == ((void*)0) || subdisks == ((void*)0) ||
     drives == ((void*)0)) {
  gctl_error(req, "number of objects not given");
  return (-1);
 }
 flags = gctl_get_paraml(req, "flags", sizeof(*flags));
 if (flags == ((void*)0)) {
  gctl_error(req, "flags not given");
  return (-1);
 }


 for (i = 0; i < *drives; i++) {
  snprintf(buf, sizeof(buf), "drive%d", i);
  d2 = gctl_get_paraml(req, buf, sizeof(*d2));
  if (d2 == ((void*)0)) {
   gctl_error(req, "no drive definition given");
   return (-1);
  }




  pp = g_provider_by_name(d2->device);
  if (pp == ((void*)0)) {
   gctl_error(req, "%s: device not found", d2->device);
   goto error;
  }
  if (gv_find_drive(sc, d2->name) != ((void*)0)) {

   if (*flags & GV_FLAG_F)
    continue;
   gctl_error(req, "drive '%s' already exists", d2->name);
   goto error;
  }
  if (gv_find_drive_device(sc, d2->device) != ((void*)0)) {
   gctl_error(req, "device '%s' already configured in "
       "gvinum", d2->device);
   goto error;
  }


  d = g_malloc(sizeof(*d), M_WAITOK | M_ZERO);
  bcopy(d2, d, sizeof(*d));

  gv_post_event(sc, GV_EVENT_CREATE_DRIVE, d, ((void*)0), 0, 0);
 }


 for (i = 0; i < *volumes; i++) {
  error = 0;
  snprintf(buf, sizeof(buf), "volume%d", i);
  v2 = gctl_get_paraml(req, buf, sizeof(*v2));
  if (v2 == ((void*)0)) {
   gctl_error(req, "no volume definition given");
   return (-1);
  }
  if (gv_find_vol(sc, v2->name) != ((void*)0)) {

   if (*flags & GV_FLAG_F)
    continue;
   gctl_error(req, "volume '%s' already exists", v2->name);
   goto error;
  }

  v = g_malloc(sizeof(*v), M_WAITOK | M_ZERO);
  bcopy(v2, v, sizeof(*v));

  gv_post_event(sc, GV_EVENT_CREATE_VOLUME, v, ((void*)0), 0, 0);
 }


 for (i = 0; i < *plexes; i++) {
  error = 0;
  snprintf(buf, sizeof(buf), "plex%d", i);
  p2 = gctl_get_paraml(req, buf, sizeof(*p2));
  if (p2 == ((void*)0)) {
   gctl_error(req, "no plex definition given");
   return (-1);
  }
  if (gv_find_plex(sc, p2->name) != ((void*)0)) {

   if (*flags & GV_FLAG_F)
    continue;
   gctl_error(req, "plex '%s' already exists", p2->name);
   goto error;
  }

  p = g_malloc(sizeof(*p), M_WAITOK | M_ZERO);
  bcopy(p2, p, sizeof(*p));

  gv_post_event(sc, GV_EVENT_CREATE_PLEX, p, ((void*)0), 0, 0);
 }


 for (i = 0; i < *subdisks; i++) {
  error = 0;
  snprintf(buf, sizeof(buf), "sd%d", i);
  s2 = gctl_get_paraml(req, buf, sizeof(*s2));
  if (s2 == ((void*)0)) {
   gctl_error(req, "no subdisk definition given");
   return (-1);
  }
  if (gv_find_sd(sc, s2->name) != ((void*)0)) {

   if (*flags & GV_FLAG_F)
    continue;
   gctl_error(req, "sd '%s' already exists", s2->name);
   goto error;
  }

  s = g_malloc(sizeof(*s), M_WAITOK | M_ZERO);
  bcopy(s2, s, sizeof(*s));

  gv_post_event(sc, GV_EVENT_CREATE_SD, s, ((void*)0), 0, 0);
 }

error:
 gv_post_event(sc, GV_EVENT_SETUP_OBJECTS, sc, ((void*)0), 0, 0);
 gv_post_event(sc, GV_EVENT_SAVE_CONFIG, sc, ((void*)0), 0, 0);

 return (0);
}
