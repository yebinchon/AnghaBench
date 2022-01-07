
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct gv_softc {int dummy; } ;
struct gctl_req {int dummy; } ;
struct g_geom {struct gv_softc* softc; } ;
struct g_class {int geom; } ;


 int GV_CFG_LEN ;
 int GV_EVENT_RESET_CONFIG ;
 int GV_EVENT_SAVE_CONFIG ;
 struct g_geom* LIST_FIRST (int *) ;
 int SBUF_FIXEDLEN ;
 int g_topology_assert () ;
 int gctl_error (struct gctl_req*,char*) ;
 char* gctl_get_param (struct gctl_req*,char*,int *) ;
 int gctl_set_param (struct gctl_req*,char*,int ,scalar_t__) ;
 int gv_attach (struct gv_softc*,struct gctl_req*) ;
 int gv_concat (struct g_geom*,struct gctl_req*) ;
 int gv_create (struct g_geom*,struct gctl_req*) ;
 int gv_detach (struct gv_softc*,struct gctl_req*) ;
 int gv_format_config (struct gv_softc*,struct sbuf*,int ,char*) ;
 int gv_list (struct g_geom*,struct gctl_req*) ;
 int gv_mirror (struct g_geom*,struct gctl_req*) ;
 int gv_move (struct g_geom*,struct gctl_req*) ;
 int gv_parityop (struct gv_softc*,struct gctl_req*) ;
 int gv_post_event (struct gv_softc*,int ,struct gv_softc*,int *,int ,int ) ;
 int gv_raid5 (struct g_geom*,struct gctl_req*) ;
 int gv_remove (struct g_geom*,struct gctl_req*) ;
 int gv_rename (struct g_geom*,struct gctl_req*) ;
 int gv_setstate (struct g_geom*,struct gctl_req*) ;
 int gv_start_obj (struct g_geom*,struct gctl_req*) ;
 int gv_stripe (struct g_geom*,struct gctl_req*) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 scalar_t__ sbuf_len (struct sbuf*) ;
 struct sbuf* sbuf_new (int *,int *,int ,int ) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void
gv_config(struct gctl_req *req, struct g_class *mp, char const *verb)
{
 struct g_geom *gp;
 struct gv_softc *sc;
 struct sbuf *sb;
 char *comment;

 g_topology_assert();

 gp = LIST_FIRST(&mp->geom);
 sc = gp->softc;

 if (!strcmp(verb, "attach")) {
  gv_attach(sc, req);

 } else if (!strcmp(verb, "concat")) {
  gv_concat(gp, req);

 } else if (!strcmp(verb, "detach")) {
  gv_detach(sc, req);

 } else if (!strcmp(verb, "list")) {
  gv_list(gp, req);


 } else if (!strcmp(verb, "saveconfig")) {
  gv_post_event(sc, GV_EVENT_SAVE_CONFIG, sc, ((void*)0), 0, 0);


 } else if (!strcmp(verb, "getconfig")) {
  comment = gctl_get_param(req, "comment", ((void*)0));
  if (comment == ((void*)0)) {
   gctl_error(req, "no comment parameter given");
   return;
  }
  sb = sbuf_new(((void*)0), ((void*)0), GV_CFG_LEN, SBUF_FIXEDLEN);
  gv_format_config(sc, sb, 0, comment);
  sbuf_finish(sb);
  gctl_set_param(req, "config", sbuf_data(sb), sbuf_len(sb) + 1);
  sbuf_delete(sb);

 } else if (!strcmp(verb, "create")) {
  gv_create(gp, req);

 } else if (!strcmp(verb, "mirror")) {
  gv_mirror(gp, req);

 } else if (!strcmp(verb, "move")) {
  gv_move(gp, req);

 } else if (!strcmp(verb, "raid5")) {
  gv_raid5(gp, req);

 } else if (!strcmp(verb, "rebuildparity") ||
     !strcmp(verb, "checkparity")) {
  gv_parityop(sc, req);

 } else if (!strcmp(verb, "remove")) {
  gv_remove(gp, req);

 } else if (!strcmp(verb, "rename")) {
  gv_rename(gp, req);

 } else if (!strcmp(verb, "resetconfig")) {
  gv_post_event(sc, GV_EVENT_RESET_CONFIG, sc, ((void*)0), 0, 0);

 } else if (!strcmp(verb, "start")) {
  gv_start_obj(gp, req);

 } else if (!strcmp(verb, "stripe")) {
  gv_stripe(gp, req);

 } else if (!strcmp(verb, "setstate")) {
  gv_setstate(gp, req);
 } else
  gctl_error(req, "Unknown verb parameter");
}
