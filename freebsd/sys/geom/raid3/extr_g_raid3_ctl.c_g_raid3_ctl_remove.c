
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_raid3_softc {size_t sc_ndisks; int sc_lock; struct g_raid3_disk* sc_disks; } ;
struct g_raid3_disk {int d_state; } ;
struct g_class {int dummy; } ;
typedef size_t intmax_t ;



 int G_RAID3_DISK_STATE_DISCONNECTED ;



 int G_RAID3_EVENT_DONTWAIT ;
 int g_raid3_clear_metadata (struct g_raid3_disk*) ;
 int g_raid3_event_send (struct g_raid3_disk*,int ,int ) ;
 struct g_raid3_softc* g_raid3_find_device (struct g_class*,char const*) ;
 size_t g_raid3_get_diskname (struct g_raid3_disk*) ;
 size_t g_raid3_ndisks (struct g_raid3_softc*,int const) ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;
 void* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
g_raid3_ctl_remove(struct gctl_req *req, struct g_class *mp)
{
 struct g_raid3_softc *sc;
 struct g_raid3_disk *disk;
 const char *name;
 intmax_t *no;
 int *nargs;

 nargs = gctl_get_paraml(req, "nargs", sizeof(*nargs));
 if (nargs == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "nargs");
  return;
 }
 if (*nargs != 1) {
  gctl_error(req, "Invalid number of arguments.");
  return;
 }
 no = gctl_get_paraml(req, "number", sizeof(*no));
 if (no == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "no");
  return;
 }
 name = gctl_get_asciiparam(req, "arg0");
 if (name == ((void*)0)) {
  gctl_error(req, "No 'arg%u' argument.", 0);
  return;
 }
 sc = g_raid3_find_device(mp, name);
 if (sc == ((void*)0)) {
  gctl_error(req, "No such device: %s.", name);
  return;
 }
 if (*no >= sc->sc_ndisks) {
  sx_xunlock(&sc->sc_lock);
  gctl_error(req, "Invalid component number.");
  return;
 }
 disk = &sc->sc_disks[*no];
 switch (disk->d_state) {
 case 131:




  if (g_raid3_ndisks(sc, 131) <
      sc->sc_ndisks) {
   gctl_error(req, "Cannot replace component number %jd.",
       *no);
   break;
  }

 case 129:
 case 128:
  if (g_raid3_clear_metadata(disk) != 0) {
   gctl_error(req, "Cannot clear metadata on %s.",
       g_raid3_get_diskname(disk));
  } else {
   g_raid3_event_send(disk,
       G_RAID3_DISK_STATE_DISCONNECTED,
       G_RAID3_EVENT_DONTWAIT);
  }
  break;
 case 130:
  break;
 default:
  gctl_error(req, "Cannot replace component number %jd.", *no);
  break;
 }
 sx_xunlock(&sc->sc_lock);
}
