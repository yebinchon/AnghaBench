
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_volume {int dummy; } ;
struct gv_softc {int dummy; } ;
typedef struct gv_volume gv_plex ;
struct gctl_req {int dummy; } ;
struct g_geom {struct gv_softc* softc; } ;
typedef int buf ;


 int GV_EVENT_START_PLEX ;
 int GV_EVENT_START_VOLUME ;




 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_param (struct gctl_req*,char*,int *) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 struct gv_volume* gv_find_plex (struct gv_softc*,char*) ;
 struct gv_volume* gv_find_vol (struct gv_softc*,char*) ;
 int gv_object_type (struct gv_softc*,char*) ;
 int gv_post_event (struct gv_softc*,int ,struct gv_volume*,int *,int,int ) ;
 int snprintf (char*,int,char*,int) ;

void
gv_start_obj(struct g_geom *gp, struct gctl_req *req)
{
 struct gv_softc *sc;
 struct gv_volume *v;
 struct gv_plex *p;
 int *argc, *initsize;
 char *argv, buf[20];
 int i, type;

 argc = gctl_get_paraml(req, "argc", sizeof(*argc));
 initsize = gctl_get_paraml(req, "initsize", sizeof(*initsize));

 if (argc == ((void*)0) || *argc == 0) {
  gctl_error(req, "no arguments given");
  return;
 }

 sc = gp->softc;

 for (i = 0; i < *argc; i++) {
  snprintf(buf, sizeof(buf), "argv%d", i);
  argv = gctl_get_param(req, buf, ((void*)0));
  if (argv == ((void*)0))
   continue;
  type = gv_object_type(sc, argv);
  switch (type) {
  case 128:
   v = gv_find_vol(sc, argv);
   if (v != ((void*)0))
    gv_post_event(sc, GV_EVENT_START_VOLUME, v,
        ((void*)0), *initsize, 0);
   break;

  case 130:
   p = gv_find_plex(sc, argv);
   if (p != ((void*)0))
    gv_post_event(sc, GV_EVENT_START_PLEX, p, ((void*)0),
        *initsize, 0);
   break;

  case 129:
  case 131:

   gctl_error(req, "unable to start '%s' - not yet supported",
       argv);
   return;
  default:
   gctl_error(req, "unknown object '%s'", argv);
   return;
  }
 }
}
