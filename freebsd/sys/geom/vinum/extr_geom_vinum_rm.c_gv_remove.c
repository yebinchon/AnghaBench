
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gv_volume {char* name; int consumer; TYPE_2__* plex_sc; int volume; TYPE_1__* vol_sc; int subdisks; int plexes; } ;
struct gv_softc {char* name; int consumer; TYPE_2__* plex_sc; int volume; TYPE_1__* vol_sc; int subdisks; int plexes; } ;
struct gv_sd {char* name; int consumer; TYPE_2__* plex_sc; int volume; TYPE_1__* vol_sc; int subdisks; int plexes; } ;
struct gv_plex {char* name; int consumer; TYPE_2__* plex_sc; int volume; TYPE_1__* vol_sc; int subdisks; int plexes; } ;
struct gv_drive {char* name; int consumer; TYPE_2__* plex_sc; int volume; TYPE_1__* vol_sc; int subdisks; int plexes; } ;
struct gctl_req {int dummy; } ;
struct g_geom {struct gv_volume* softc; } ;
typedef int buf ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int plexcount; } ;


 int GV_EVENT_RM_DRIVE ;
 int GV_EVENT_RM_PLEX ;
 int GV_EVENT_RM_SD ;
 int GV_EVENT_RM_VOLUME ;
 int GV_EVENT_SAVE_CONFIG ;
 int GV_FLAG_F ;
 int GV_FLAG_R ;




 int LIST_EMPTY (int *) ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_param (struct gctl_req*,char*,int *) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int gv_consumer_is_open (int ) ;
 struct gv_volume* gv_find_drive (struct gv_volume*,char*) ;
 struct gv_volume* gv_find_plex (struct gv_volume*,char*) ;
 struct gv_volume* gv_find_sd (struct gv_volume*,char*) ;
 struct gv_volume* gv_find_vol (struct gv_volume*,char*) ;
 int gv_object_type (struct gv_volume*,char*) ;
 int gv_post_event (struct gv_volume*,int ,struct gv_volume*,int *,int,int ) ;
 int snprintf (char*,int,char*,int) ;

void
gv_remove(struct g_geom *gp, struct gctl_req *req)
{
 struct gv_softc *sc;
 struct gv_volume *v;
 struct gv_plex *p;
 struct gv_sd *s;
 struct gv_drive *d;
 int *argc, *flags;
 char *argv, buf[20];
 int i, type;

 argc = gctl_get_paraml(req, "argc", sizeof(*argc));

 if (argc == ((void*)0) || *argc == 0) {
  gctl_error(req, "no arguments given");
  return;
 }

 flags = gctl_get_paraml(req, "flags", sizeof(*flags));
 if (flags == ((void*)0)) {
  gctl_error(req, "no flags given");
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





   if (!LIST_EMPTY(&v->plexes) && !(*flags & GV_FLAG_R)) {
    gctl_error(req, "volume '%s' has attached "
        "plexes - need recursive removal", v->name);
    return;
   }

   gv_post_event(sc, GV_EVENT_RM_VOLUME, v, ((void*)0), 0, 0);
   break;

  case 130:
   p = gv_find_plex(sc, argv);





   if (!LIST_EMPTY(&p->subdisks) &&
       !(*flags & GV_FLAG_R)) {
    gctl_error(req, "plex '%s' has attached "
        "subdisks - need recursive removal",
        p->name);
    return;
   }


   if (p->vol_sc != ((void*)0) && p->vol_sc->plexcount == 1) {
    gctl_error(req, "plex '%s' is still attached "
        "to volume '%s'", p->name, p->volume);
    return;
   }

   gv_post_event(sc, GV_EVENT_RM_PLEX, p, ((void*)0), 0, 0);
   break;

  case 129:
   s = gv_find_sd(sc, argv);


   if (s->plex_sc != ((void*)0)) {
    gctl_error(req, "subdisk '%s' is still attached"
        " to plex '%s'", s->name, s->plex_sc->name);
    return;
   }

   gv_post_event(sc, GV_EVENT_RM_SD, s, ((void*)0), 0, 0);
   break;

  case 131:
   d = gv_find_drive(sc, argv);

   if (gv_consumer_is_open(d->consumer) &&
       !(*flags & GV_FLAG_F)) {
    gctl_error(req, "drive '%s' is open", d->name);
    return;
   }
   gv_post_event(sc, GV_EVENT_RM_DRIVE, d, ((void*)0), *flags,
       0);
   break;

  default:
   gctl_error(req, "unknown object '%s'", argv);
   return;
  }
 }

 gv_post_event(sc, GV_EVENT_SAVE_CONFIG, sc, ((void*)0), 0, 0);
}
