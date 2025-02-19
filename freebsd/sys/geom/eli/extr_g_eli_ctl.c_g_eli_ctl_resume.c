
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct g_eli_metadata {int md_keys; } ;
typedef struct g_eli_metadata u_char ;
struct gctl_req {int dummy; } ;
struct g_provider {char const* name; } ;
struct g_eli_softc {int sc_flags; int sc_queue_mtx; TYPE_1__* sc_geom; } ;
struct g_consumer {struct g_provider* provider; } ;
struct g_class {int dummy; } ;
typedef int mkey ;
typedef int md ;
struct TYPE_2__ {int consumer; } ;


 int G_ELI_DATAIVKEYLEN ;
 int G_ELI_DEBUG (int,char*,char const*,...) ;
 int G_ELI_FLAG_SUSPEND ;
 int G_ELI_USERKEYLEN ;
 struct g_consumer* LIST_FIRST (int *) ;
 int explicit_bzero (struct g_eli_metadata*,int) ;
 struct g_eli_softc* g_eli_find_device (struct g_class*,char const*) ;
 int g_eli_mkey_decrypt_any (struct g_eli_metadata*,struct g_eli_metadata*,struct g_eli_metadata*,int *) ;
 int g_eli_mkey_propagate (struct g_eli_softc*,struct g_eli_metadata*) ;
 int g_eli_read_metadata (struct g_class*,struct g_provider*,struct g_eli_metadata*) ;
 int g_topology_assert () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;
 struct g_eli_metadata* gctl_get_param (struct gctl_req*,char*,int*) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct g_eli_softc*) ;

__attribute__((used)) static void
g_eli_ctl_resume(struct gctl_req *req, struct g_class *mp)
{
 struct g_eli_metadata md;
 struct g_eli_softc *sc;
 struct g_provider *pp;
 struct g_consumer *cp;
 const char *name;
 u_char *key, mkey[G_ELI_DATAIVKEYLEN];
 int *nargs, keysize, error;
 u_int nkey;

 g_topology_assert();

 nargs = gctl_get_paraml(req, "nargs", sizeof(*nargs));
 if (nargs == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "nargs");
  return;
 }
 if (*nargs != 1) {
  gctl_error(req, "Invalid number of arguments.");
  return;
 }

 name = gctl_get_asciiparam(req, "arg0");
 if (name == ((void*)0)) {
  gctl_error(req, "No 'arg%u' argument.", 0);
  return;
 }
 key = gctl_get_param(req, "key", &keysize);
 if (key == ((void*)0) || keysize != G_ELI_USERKEYLEN) {
  gctl_error(req, "No '%s' argument.", "key");
  return;
 }
 sc = g_eli_find_device(mp, name);
 if (sc == ((void*)0)) {
  gctl_error(req, "Provider %s is invalid.", name);
  return;
 }
 cp = LIST_FIRST(&sc->sc_geom->consumer);
 pp = cp->provider;
 error = g_eli_read_metadata(mp, pp, &md);
 if (error != 0) {
  gctl_error(req, "Cannot read metadata from %s (error=%d).",
      name, error);
  return;
 }
 if (md.md_keys == 0x00) {
  explicit_bzero(&md, sizeof(md));
  gctl_error(req, "No valid keys on %s.", pp->name);
  return;
 }

 error = g_eli_mkey_decrypt_any(&md, key, mkey, &nkey);
 explicit_bzero(key, keysize);
 if (error == -1) {
  explicit_bzero(&md, sizeof(md));
  gctl_error(req, "Wrong key for %s.", pp->name);
  return;
 } else if (error > 0) {
  explicit_bzero(&md, sizeof(md));
  gctl_error(req, "Cannot decrypt Master Key for %s (error=%d).",
      pp->name, error);
  return;
 }
 G_ELI_DEBUG(1, "Using Master Key %u for %s.", nkey, pp->name);

 mtx_lock(&sc->sc_queue_mtx);
 if (!(sc->sc_flags & G_ELI_FLAG_SUSPEND))
  gctl_error(req, "Device %s is not suspended.", name);
 else {

  g_eli_mkey_propagate(sc, mkey);
  sc->sc_flags &= ~G_ELI_FLAG_SUSPEND;
  G_ELI_DEBUG(1, "Resumed %s.", pp->name);
  wakeup(sc);
 }
 mtx_unlock(&sc->sc_queue_mtx);
 explicit_bzero(mkey, sizeof(mkey));
 explicit_bzero(&md, sizeof(md));
}
