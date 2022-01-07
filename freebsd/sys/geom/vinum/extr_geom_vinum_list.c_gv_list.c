
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct gv_volume {int dummy; } ;
struct gv_softc {int dummy; } ;
struct gv_sd {int dummy; } ;
struct gv_plex {int dummy; } ;
struct gv_drive {int dummy; } ;
struct gctl_req {int dummy; } ;
struct g_geom {struct gv_softc* softc; } ;
typedef int buf ;


 int GV_CFG_LEN ;




 int SBUF_FIXEDLEN ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_param (struct gctl_req*,char*,int *) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int gctl_set_param (struct gctl_req*,char*,int ,scalar_t__) ;
 struct gv_drive* gv_find_drive (struct gv_softc*,char*) ;
 struct gv_plex* gv_find_plex (struct gv_softc*,char*) ;
 struct gv_sd* gv_find_sd (struct gv_softc*,char*) ;
 struct gv_volume* gv_find_vol (struct gv_softc*,char*) ;
 int gv_ld (struct g_geom*,struct gctl_req*,struct sbuf*) ;
 int gv_ldi (struct gv_drive*,struct sbuf*,int) ;
 int gv_lp (struct g_geom*,struct gctl_req*,struct sbuf*) ;
 int gv_lpi (struct gv_plex*,struct sbuf*,int) ;
 int gv_ls (struct g_geom*,struct gctl_req*,struct sbuf*) ;
 int gv_lsi (struct gv_sd*,struct sbuf*,int) ;
 int gv_lv (struct g_geom*,struct gctl_req*,struct sbuf*) ;
 int gv_lvi (struct gv_volume*,struct sbuf*,int) ;
 int gv_object_type (struct gv_softc*,char*) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 scalar_t__ sbuf_len (struct sbuf*) ;
 struct sbuf* sbuf_new (int *,int *,int ,int ) ;
 int sbuf_printf (struct sbuf*,char*) ;
 int snprintf (char*,int,char*,int) ;
 int strcmp (char*,char*) ;

void
gv_list(struct g_geom *gp, struct gctl_req *req)
{
 struct gv_softc *sc;
 struct gv_drive *d;
 struct gv_plex *p;
 struct gv_sd *s;
 struct gv_volume *v;
 struct sbuf *sb;
 int *argc, i, *flags, type;
 char *arg, buf[20], *cmd;

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

 sc = gp->softc;

 sb = sbuf_new(((void*)0), ((void*)0), GV_CFG_LEN, SBUF_FIXEDLEN);


 cmd = gctl_get_param(req, "cmd", ((void*)0));
 if (cmd == ((void*)0)) {
  gctl_error(req, "no command given");
  return;
 }


 if (!strcmp(cmd, "list") || !strcmp(cmd, "l")) {
  if (*argc) {
   for (i = 0; i < *argc; i++) {
    snprintf(buf, sizeof(buf), "argv%d", i);
    arg = gctl_get_param(req, buf, ((void*)0));
    if (arg == ((void*)0))
     continue;
    type = gv_object_type(sc, arg);
    switch (type) {
    case 128:
     v = gv_find_vol(sc, arg);
     gv_lvi(v, sb, *flags);
     break;
    case 130:
     p = gv_find_plex(sc, arg);
     gv_lpi(p, sb, *flags);
     break;
    case 129:
     s = gv_find_sd(sc, arg);
     gv_lsi(s, sb, *flags);
     break;
    case 131:
     d = gv_find_drive(sc, arg);
     gv_ldi(d, sb, *flags);
     break;
    default:
     gctl_error(req, "unknown object '%s'",
         arg);
     break;
    }
   }
  } else {
   gv_ld(gp, req, sb);
   sbuf_printf(sb, "\n");
   gv_lv(gp, req, sb);
   sbuf_printf(sb, "\n");
   gv_lp(gp, req, sb);
   sbuf_printf(sb, "\n");
   gv_ls(gp, req, sb);
  }


 } else if (!strcmp(cmd, "ld")) {
  if (*argc) {
   for (i = 0; i < *argc; i++) {
    snprintf(buf, sizeof(buf), "argv%d", i);
    arg = gctl_get_param(req, buf, ((void*)0));
    if (arg == ((void*)0))
     continue;
    type = gv_object_type(sc, arg);
    if (type != 131) {
     gctl_error(req, "'%s' is not a drive",
         arg);
     continue;
    } else {
     d = gv_find_drive(sc, arg);
     gv_ldi(d, sb, *flags);
    }
   }
  } else
   gv_ld(gp, req, sb);


 } else if (!strcmp(cmd, "lv")) {
  if (*argc) {
   for (i = 0; i < *argc; i++) {
    snprintf(buf, sizeof(buf), "argv%d", i);
    arg = gctl_get_param(req, buf, ((void*)0));
    if (arg == ((void*)0))
     continue;
    type = gv_object_type(sc, arg);
    if (type != 128) {
     gctl_error(req, "'%s' is not a volume",
         arg);
     continue;
    } else {
     v = gv_find_vol(sc, arg);
     gv_lvi(v, sb, *flags);
    }
   }
  } else
   gv_lv(gp, req, sb);


 } else if (!strcmp(cmd, "lp")) {
  if (*argc) {
   for (i = 0; i < *argc; i++) {
    snprintf(buf, sizeof(buf), "argv%d", i);
    arg = gctl_get_param(req, buf, ((void*)0));
    if (arg == ((void*)0))
     continue;
    type = gv_object_type(sc, arg);
    if (type != 130) {
     gctl_error(req, "'%s' is not a plex",
         arg);
     continue;
    } else {
     p = gv_find_plex(sc, arg);
     gv_lpi(p, sb, *flags);
    }
   }
  } else
   gv_lp(gp, req, sb);


 } else if (!strcmp(cmd, "ls")) {
  if (*argc) {
   for (i = 0; i < *argc; i++) {
    snprintf(buf, sizeof(buf), "argv%d", i);
    arg = gctl_get_param(req, buf, ((void*)0));
    if (arg == ((void*)0))
     continue;
    type = gv_object_type(sc, arg);
    if (type != 129) {
     gctl_error(req, "'%s' is not a subdisk",
         arg);
     continue;
    } else {
     s = gv_find_sd(sc, arg);
     gv_lsi(s, sb, *flags);
    }
   }
  } else
   gv_ls(gp, req, sb);

 } else
  gctl_error(req, "unknown command '%s'", cmd);

 sbuf_finish(sb);
 gctl_set_param(req, "config", sbuf_data(sb), sbuf_len(sb) + 1);
 sbuf_delete(sb);
}
