
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_volume {int dummy; } ;
struct gv_softc {int dummy; } ;
typedef struct gv_volume gv_sd ;
typedef struct gv_volume gv_plex ;
struct gctl_req {int dummy; } ;
typedef int off_t ;


 int GV_EVENT_ATTACH_PLEX ;
 int GV_EVENT_ATTACH_SD ;


 int GV_TYPE_VOL ;
 int gctl_error (struct gctl_req*,char*) ;
 char* gctl_get_param (struct gctl_req*,char*,int *) ;
 void* gctl_get_paraml (struct gctl_req*,char*,int) ;
 struct gv_volume* gv_find_plex (struct gv_softc*,char*) ;
 struct gv_volume* gv_find_sd (struct gv_softc*,char*) ;
 struct gv_volume* gv_find_vol (struct gv_softc*,char*) ;
 int gv_object_type (struct gv_softc*,char*) ;
 int gv_post_event (struct gv_softc*,int ,struct gv_volume*,struct gv_volume*,int ,int) ;

__attribute__((used)) static void
gv_attach(struct gv_softc *sc, struct gctl_req *req)
{
 struct gv_volume *v;
 struct gv_plex *p;
 struct gv_sd *s;
 off_t *offset;
 int *rename, type_child, type_parent;
 char *child, *parent;

 child = gctl_get_param(req, "child", ((void*)0));
 if (child == ((void*)0)) {
  gctl_error(req, "no child given");
  return;
 }
 parent = gctl_get_param(req, "parent", ((void*)0));
 if (parent == ((void*)0)) {
  gctl_error(req, "no parent given");
  return;
 }
 offset = gctl_get_paraml(req, "offset", sizeof(*offset));
 if (offset == ((void*)0)) {
  gctl_error(req, "no offset given");
  return;
 }
 rename = gctl_get_paraml(req, "rename", sizeof(*rename));
 if (rename == ((void*)0)) {
  gctl_error(req, "no rename flag given");
  return;
 }

 type_child = gv_object_type(sc, child);
 type_parent = gv_object_type(sc, parent);

 switch (type_child) {
 case 129:
  if (type_parent != GV_TYPE_VOL) {
   gctl_error(req, "no such volume to attach to");
   return;
  }
  v = gv_find_vol(sc, parent);
  p = gv_find_plex(sc, child);
  gv_post_event(sc, GV_EVENT_ATTACH_PLEX, p, v, *offset, *rename);
  break;
 case 128:
  if (type_parent != 129) {
   gctl_error(req, "no such plex to attach to");
   return;
  }
  p = gv_find_plex(sc, parent);
  s = gv_find_sd(sc, child);
  gv_post_event(sc, GV_EVENT_ATTACH_SD, s, p, *offset, *rename);
  break;
 default:
  gctl_error(req, "invalid child type");
  break;
 }
}
