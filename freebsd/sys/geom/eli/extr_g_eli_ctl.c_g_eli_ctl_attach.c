
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_eli_metadata {int md_keys; int md_flags; } ;
typedef struct g_eli_metadata u_char ;
struct gctl_req {int dummy; } ;
struct g_provider {char const* name; } ;
struct g_class {int dummy; } ;
typedef int mkey ;
typedef int md ;
typedef int intmax_t ;


 int G_ELI_DATAIVKEYLEN ;
 int G_ELI_DEBUG (int,char*,int,char const*) ;
 int G_ELI_FLAG_RO ;
 int G_ELI_FLAG_WO_DETACH ;
 int G_ELI_MAXMKEYS ;
 int G_ELI_USERKEYLEN ;
 int explicit_bzero (struct g_eli_metadata*,int) ;
 int g_eli_create (struct gctl_req*,struct g_class*,struct g_provider*,struct g_eli_metadata*,struct g_eli_metadata*,int) ;
 int g_eli_mkey_decrypt (struct g_eli_metadata*,struct g_eli_metadata*,struct g_eli_metadata*,int) ;
 int g_eli_mkey_decrypt_any (struct g_eli_metadata*,struct g_eli_metadata*,struct g_eli_metadata*,int*) ;
 int g_eli_read_metadata (struct g_class*,struct g_provider*,struct g_eli_metadata*) ;
 struct g_provider* g_provider_by_name (char const*) ;
 int g_topology_assert () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;
 void* gctl_get_param (struct gctl_req*,char*,int*) ;
 void* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

__attribute__((used)) static void
g_eli_ctl_attach(struct gctl_req *req, struct g_class *mp)
{
 struct g_eli_metadata md;
 struct g_provider *pp;
 const char *name;
 u_char *key, mkey[G_ELI_DATAIVKEYLEN];
 int *nargs, *detach, *readonly, *dryrunp;
 int keysize, error, nkey, dryrun, dummy;
 intmax_t *valp;

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

 detach = gctl_get_paraml(req, "detach", sizeof(*detach));
 if (detach == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "detach");
  return;
 }


 nkey = -1;
 valp = gctl_get_param(req, "keyno", &dummy);
 if (valp != ((void*)0)) {
  valp = gctl_get_paraml(req, "keyno", sizeof(*valp));
  if (valp != ((void*)0))
   nkey = *valp;
 }
 if (nkey < -1 || nkey >= G_ELI_MAXMKEYS) {
  gctl_error(req, "Invalid '%s' argument.", "keyno");
  return;
 }

 readonly = gctl_get_paraml(req, "readonly", sizeof(*readonly));
 if (readonly == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "readonly");
  return;
 }


 dryrun = 0;
 dryrunp = gctl_get_param(req, "dryrun", &dummy);
 if (dryrunp != ((void*)0)) {
  dryrunp = gctl_get_paraml(req, "dryrun", sizeof(*dryrunp));
  if (dryrunp != ((void*)0))
   dryrun = *dryrunp;
 }

 if (*detach && *readonly) {
  gctl_error(req, "Options -d and -r are mutually exclusive.");
  return;
 }

 name = gctl_get_asciiparam(req, "arg0");
 if (name == ((void*)0)) {
  gctl_error(req, "No 'arg%u' argument.", 0);
  return;
 }
 if (strncmp(name, "/dev/", strlen("/dev/")) == 0)
  name += strlen("/dev/");
 pp = g_provider_by_name(name);
 if (pp == ((void*)0)) {
  gctl_error(req, "Provider %s is invalid.", name);
  return;
 }
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

 key = gctl_get_param(req, "key", &keysize);
 if (key == ((void*)0) || keysize != G_ELI_USERKEYLEN) {
  explicit_bzero(&md, sizeof(md));
  gctl_error(req, "No '%s' argument.", "key");
  return;
 }

 if (nkey == -1)
  error = g_eli_mkey_decrypt_any(&md, key, mkey, &nkey);
 else
  error = g_eli_mkey_decrypt(&md, key, mkey, nkey);
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

 if (*detach)
  md.md_flags |= G_ELI_FLAG_WO_DETACH;
 if (*readonly)
  md.md_flags |= G_ELI_FLAG_RO;
 if (!dryrun)
  g_eli_create(req, mp, pp, &md, mkey, nkey);
 explicit_bzero(mkey, sizeof(mkey));
 explicit_bzero(&md, sizeof(md));
}
