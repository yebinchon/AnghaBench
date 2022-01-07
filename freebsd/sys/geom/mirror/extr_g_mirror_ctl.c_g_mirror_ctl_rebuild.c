
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct gctl_req {int dummy; } ;
struct g_provider {char const* name; } ;
struct g_mirror_softc {int sc_flags; int sc_lock; TYPE_1__* sc_geom; } ;
struct g_mirror_metadata {int dummy; } ;
struct TYPE_5__ {scalar_t__ ds_syncid; } ;
struct g_mirror_disk {scalar_t__ d_state; TYPE_3__* d_consumer; int d_flags; TYPE_2__ d_sync; } ;
struct g_class {int dummy; } ;
typedef int param ;
struct TYPE_6__ {struct g_provider* provider; } ;
struct TYPE_4__ {int name; } ;


 int G_MIRROR_DEVICE_FLAG_NOAUTOSYNC ;
 int G_MIRROR_DISK_FLAG_FORCE_SYNC ;
 scalar_t__ G_MIRROR_DISK_STATE_ACTIVE ;
 int G_MIRROR_DISK_STATE_DISCONNECTED ;
 int G_MIRROR_EVENT_WAIT ;
 int g_mirror_add_disk (struct g_mirror_softc*,struct g_provider*,struct g_mirror_metadata*) ;
 int g_mirror_event_send (struct g_mirror_disk*,int ,int ) ;
 struct g_mirror_softc* g_mirror_find_device (struct g_class*,char const*) ;
 struct g_mirror_disk* g_mirror_find_disk (struct g_mirror_softc*,char const*) ;
 int g_mirror_ndisks (struct g_mirror_softc*,scalar_t__) ;
 int g_mirror_read_metadata (TYPE_3__*,struct g_mirror_metadata*) ;
 int g_mirror_update_metadata (struct g_mirror_disk*) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
g_mirror_ctl_rebuild(struct gctl_req *req, struct g_class *mp)
{
 struct g_mirror_metadata md;
 struct g_mirror_softc *sc;
 struct g_mirror_disk *disk;
 struct g_provider *pp;
 const char *name;
 char param[16];
 int error, *nargs;
 u_int i;

 nargs = gctl_get_paraml(req, "nargs", sizeof(*nargs));
 if (nargs == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "nargs");
  return;
 }
 if (*nargs < 2) {
  gctl_error(req, "Too few arguments.");
  return;
 }
 name = gctl_get_asciiparam(req, "arg0");
 if (name == ((void*)0)) {
  gctl_error(req, "No 'arg%u' argument.", 0);
  return;
 }
 sc = g_mirror_find_device(mp, name);
 if (sc == ((void*)0)) {
  gctl_error(req, "No such device: %s.", name);
  return;
 }
 for (i = 1; i < (u_int)*nargs; i++) {
  snprintf(param, sizeof(param), "arg%u", i);
  name = gctl_get_asciiparam(req, param);
  if (name == ((void*)0)) {
   gctl_error(req, "No 'arg%u' argument.", i);
   continue;
  }
  disk = g_mirror_find_disk(sc, name);
  if (disk == ((void*)0)) {
   gctl_error(req, "No such provider: %s.", name);
   continue;
  }
  if (g_mirror_ndisks(sc, G_MIRROR_DISK_STATE_ACTIVE) == 1 &&
      disk->d_state == G_MIRROR_DISK_STATE_ACTIVE) {




   gctl_error(req,
       "Provider %s is the last active provider in %s.",
       name, sc->sc_geom->name);
   break;
  }




  disk->d_sync.ds_syncid = 0;
  if ((sc->sc_flags & G_MIRROR_DEVICE_FLAG_NOAUTOSYNC) != 0)
   disk->d_flags |= G_MIRROR_DISK_FLAG_FORCE_SYNC;
  g_mirror_update_metadata(disk);
  pp = disk->d_consumer->provider;
  g_topology_lock();
  error = g_mirror_read_metadata(disk->d_consumer, &md);
  g_topology_unlock();
  g_mirror_event_send(disk, G_MIRROR_DISK_STATE_DISCONNECTED,
      G_MIRROR_EVENT_WAIT);
  if (error != 0) {
   gctl_error(req, "Cannot read metadata from %s.",
       pp->name);
   continue;
  }
  error = g_mirror_add_disk(sc, pp, &md);
  if (error != 0) {
   gctl_error(req, "Cannot reconnect component %s.",
       pp->name);
   continue;
  }
 }
 sx_xunlock(&sc->sc_lock);
}
