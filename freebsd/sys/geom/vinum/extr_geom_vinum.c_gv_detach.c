
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int dummy; } ;
struct gv_sd {int dummy; } ;
typedef struct gv_sd gv_plex ;
struct gctl_req {int dummy; } ;


 int GV_EVENT_DETACH_PLEX ;
 int GV_EVENT_DETACH_SD ;


 int gctl_error (struct gctl_req*,char*) ;
 char* gctl_get_param (struct gctl_req*,char*,int *) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 struct gv_sd* gv_find_plex (struct gv_softc*,char*) ;
 struct gv_sd* gv_find_sd (struct gv_softc*,char*) ;
 int gv_object_type (struct gv_softc*,char*) ;
 int gv_post_event (struct gv_softc*,int ,struct gv_sd*,int *,int,int ) ;

__attribute__((used)) static void
gv_detach(struct gv_softc *sc, struct gctl_req *req)
{
 struct gv_plex *p;
 struct gv_sd *s;
 int *flags, type;
 char *object;

 object = gctl_get_param(req, "object", ((void*)0));
 if (object == ((void*)0)) {
  gctl_error(req, "no argument given");
  return;
 }

 flags = gctl_get_paraml(req, "flags", sizeof(*flags));
 type = gv_object_type(sc, object);
 switch (type) {
 case 129:
  p = gv_find_plex(sc, object);
  gv_post_event(sc, GV_EVENT_DETACH_PLEX, p, ((void*)0), *flags, 0);
  break;
 case 128:
  s = gv_find_sd(sc, object);
  gv_post_event(sc, GV_EVENT_DETACH_SD, s, ((void*)0), *flags, 0);
  break;
 default:
  gctl_error(req, "invalid object type");
  break;
 }
}
