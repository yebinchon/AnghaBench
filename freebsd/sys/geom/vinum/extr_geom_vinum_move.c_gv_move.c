
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int dummy; } ;
struct gv_sd {int dummy; } ;
struct gv_drive {int dummy; } ;
struct gctl_req {int dummy; } ;
struct g_geom {struct gv_softc* softc; } ;
typedef int buf ;


 int GV_EVENT_MOVE_SD ;
 int GV_TYPE_DRIVE ;
 int GV_TYPE_SD ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_param (struct gctl_req*,char*,int *) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 struct gv_drive* gv_find_drive (struct gv_softc*,char*) ;
 struct gv_sd* gv_find_sd (struct gv_softc*,char*) ;
 int gv_object_type (struct gv_softc*,char*) ;
 int gv_post_event (struct gv_softc*,int ,struct gv_sd*,struct gv_drive*,int,int ) ;
 int snprintf (char*,int,char*,int) ;

void
gv_move(struct g_geom *gp, struct gctl_req *req)
{
 struct gv_softc *sc;
 struct gv_sd *s;
 struct gv_drive *d;
 char buf[20], *destination, *object;
 int *argc, *flags, i, type;

 sc = gp->softc;

 argc = gctl_get_paraml(req, "argc", sizeof(*argc));
 if (argc == ((void*)0)) {
  gctl_error(req, "no arguments given");
  return;
 }
 flags = gctl_get_paraml(req, "flags", sizeof(*flags));
 if (flags == ((void*)0)) {
  gctl_error(req, "no flags given");
  return;
 }
 destination = gctl_get_param(req, "destination", ((void*)0));
 if (destination == ((void*)0)) {
  gctl_error(req, "no destination given");
  return;
 }
 if (gv_object_type(sc, destination) != GV_TYPE_DRIVE) {
  gctl_error(req, "destination '%s' is not a drive", destination);
  return;
 }
 d = gv_find_drive(sc, destination);





 for (i = 1; i < *argc; i++) {
  snprintf(buf, sizeof(buf), "argv%d", i);
  object = gctl_get_param(req, buf, ((void*)0));
  if (object == ((void*)0))
   continue;

  type = gv_object_type(sc, object);
  if (type != GV_TYPE_SD) {
   gctl_error(req, "you can only move subdisks; "
       "'%s' is not a subdisk", object);
   return;
  }

  s = gv_find_sd(sc, object);
  if (s == ((void*)0)) {
   gctl_error(req, "unknown subdisk '%s'", object);
   return;
  }
  gv_post_event(sc, GV_EVENT_MOVE_SD, s, d, *flags, 0);
 }
}
