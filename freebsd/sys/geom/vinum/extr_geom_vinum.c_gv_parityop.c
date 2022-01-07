
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int dummy; } ;
struct gv_plex {scalar_t__ state; char* name; scalar_t__ org; } ;
struct gctl_req {int dummy; } ;


 int GV_EVENT_PARITY_CHECK ;
 int GV_EVENT_PARITY_REBUILD ;
 scalar_t__ GV_PLEX_RAID5 ;
 scalar_t__ GV_PLEX_UP ;
 int GV_TYPE_PLEX ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_param (struct gctl_req*,char*,int *) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 struct gv_plex* gv_find_plex (struct gv_softc*,char*) ;
 int gv_object_type (struct gv_softc*,char*) ;
 int gv_post_event (struct gv_softc*,int ,struct gv_plex*,int *,int ,int ) ;

__attribute__((used)) static void
gv_parityop(struct gv_softc *sc, struct gctl_req *req)
{
 struct gv_plex *p;
 int *flags, *rebuild, type;
 char *plex;

 plex = gctl_get_param(req, "plex", ((void*)0));
 if (plex == ((void*)0)) {
  gctl_error(req, "no plex given");
  return;
 }

 flags = gctl_get_paraml(req, "flags", sizeof(*flags));
 if (flags == ((void*)0)) {
  gctl_error(req, "no flags given");
  return;
 }

 rebuild = gctl_get_paraml(req, "rebuild", sizeof(*rebuild));
 if (rebuild == ((void*)0)) {
  gctl_error(req, "no operation given");
  return;
 }

 type = gv_object_type(sc, plex);
 if (type != GV_TYPE_PLEX) {
  gctl_error(req, "'%s' is not a plex", plex);
  return;
 }
 p = gv_find_plex(sc, plex);

 if (p->state != GV_PLEX_UP) {
  gctl_error(req, "plex %s is not completely accessible",
      p->name);
  return;
 }

 if (p->org != GV_PLEX_RAID5) {
  gctl_error(req, "plex %s is not a RAID5 plex", p->name);
  return;
 }




 if (*rebuild)
  gv_post_event(sc, GV_EVENT_PARITY_REBUILD, p, ((void*)0), 0, 0);
 else
  gv_post_event(sc, GV_EVENT_PARITY_CHECK, p, ((void*)0), 0, 0);
}
