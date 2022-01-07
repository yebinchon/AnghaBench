
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_eli_metadata {scalar_t__ md_ealgo; scalar_t__ md_aalgo; scalar_t__ md_keylen; int md_keys; int md_sectorsize; struct g_eli_metadata* md_hash; struct g_eli_metadata* md_salt; scalar_t__ md_provsize; int md_flags; int md_version; int md_magic; } ;
typedef struct g_eli_metadata u_char ;
struct gctl_req {int dummy; } ;
struct g_provider {int sectorsize; } ;
struct g_class {int dummy; } ;
typedef int mkey ;
typedef int md ;
typedef int intmax_t ;


 scalar_t__ CRYPTO_ALGORITHM_MAX ;
 scalar_t__ CRYPTO_ALGORITHM_MIN ;
 int G_ELI_DATAIVKEYLEN ;
 int G_ELI_FLAG_AUTH ;
 int G_ELI_FLAG_AUTORESIZE ;
 int G_ELI_FLAG_NODELETE ;
 int G_ELI_FLAG_ONETIME ;
 int G_ELI_FLAG_WO_DETACH ;
 int G_ELI_MAGIC ;
 int G_ELI_VERSION ;
 int PAGE_SIZE ;
 int arc4rand (struct g_eli_metadata*,int,int ) ;
 int bzero (struct g_eli_metadata*,int) ;
 int explicit_bzero (struct g_eli_metadata*,int) ;
 int g_eli_create (struct gctl_req*,struct g_class*,struct g_provider*,struct g_eli_metadata*,struct g_eli_metadata*,int) ;
 scalar_t__ g_eli_keylen (scalar_t__,int) ;
 scalar_t__ g_eli_str2aalgo (char const*) ;
 void* g_eli_str2ealgo (char const*) ;
 struct g_provider* g_provider_by_name (char const*) ;
 int g_topology_assert () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;
 void* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int strlcpy (int ,int ,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

__attribute__((used)) static void
g_eli_ctl_onetime(struct gctl_req *req, struct g_class *mp)
{
 struct g_eli_metadata md;
 struct g_provider *pp;
 const char *name;
 intmax_t *keylen, *sectorsize;
 u_char mkey[G_ELI_DATAIVKEYLEN];
 int *nargs, *detach, *noautoresize, *notrim;

 g_topology_assert();
 bzero(&md, sizeof(md));

 nargs = gctl_get_paraml(req, "nargs", sizeof(*nargs));
 if (nargs == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "nargs");
  return;
 }
 if (*nargs != 1) {
  gctl_error(req, "Invalid number of arguments.");
  return;
 }

 strlcpy(md.md_magic, G_ELI_MAGIC, sizeof(md.md_magic));
 md.md_version = G_ELI_VERSION;
 md.md_flags |= G_ELI_FLAG_ONETIME;
 md.md_flags |= G_ELI_FLAG_AUTORESIZE;

 detach = gctl_get_paraml(req, "detach", sizeof(*detach));
 if (detach != ((void*)0) && *detach)
  md.md_flags |= G_ELI_FLAG_WO_DETACH;
 noautoresize = gctl_get_paraml(req, "noautoresize",
     sizeof(*noautoresize));
 if (noautoresize != ((void*)0) && *noautoresize)
  md.md_flags &= ~G_ELI_FLAG_AUTORESIZE;
 notrim = gctl_get_paraml(req, "notrim", sizeof(*notrim));
 if (notrim != ((void*)0) && *notrim)
  md.md_flags |= G_ELI_FLAG_NODELETE;

 md.md_ealgo = CRYPTO_ALGORITHM_MIN - 1;
 name = gctl_get_asciiparam(req, "aalgo");
 if (name == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "aalgo");
  return;
 }
 if (*name != '\0') {
  md.md_aalgo = g_eli_str2aalgo(name);
  if (md.md_aalgo >= CRYPTO_ALGORITHM_MIN &&
      md.md_aalgo <= CRYPTO_ALGORITHM_MAX) {
   md.md_flags |= G_ELI_FLAG_AUTH;
  } else {




   md.md_ealgo = g_eli_str2ealgo(name);
   if (md.md_ealgo < CRYPTO_ALGORITHM_MIN ||
       md.md_ealgo > CRYPTO_ALGORITHM_MAX) {
    gctl_error(req,
        "Invalid authentication algorithm.");
    return;
   } else {
    gctl_error(req, "warning: The -e option, not "
        "the -a option is now used to specify "
        "encryption algorithm to use.");
   }
  }
 }

 if (md.md_ealgo < CRYPTO_ALGORITHM_MIN ||
     md.md_ealgo > CRYPTO_ALGORITHM_MAX) {
  name = gctl_get_asciiparam(req, "ealgo");
  if (name == ((void*)0)) {
   gctl_error(req, "No '%s' argument.", "ealgo");
   return;
  }
  md.md_ealgo = g_eli_str2ealgo(name);
  if (md.md_ealgo < CRYPTO_ALGORITHM_MIN ||
      md.md_ealgo > CRYPTO_ALGORITHM_MAX) {
   gctl_error(req, "Invalid encryption algorithm.");
   return;
  }
 }

 keylen = gctl_get_paraml(req, "keylen", sizeof(*keylen));
 if (keylen == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "keylen");
  return;
 }
 md.md_keylen = g_eli_keylen(md.md_ealgo, *keylen);
 if (md.md_keylen == 0) {
  gctl_error(req, "Invalid '%s' argument.", "keylen");
  return;
 }


 md.md_provsize = 0;

 bzero(md.md_salt, sizeof(md.md_salt));

 md.md_keys = 0x01;
 arc4rand(mkey, sizeof(mkey), 0);


 bzero(md.md_hash, sizeof(md.md_hash));

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

 sectorsize = gctl_get_paraml(req, "sectorsize", sizeof(*sectorsize));
 if (sectorsize == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "sectorsize");
  return;
 }
 if (*sectorsize == 0)
  md.md_sectorsize = pp->sectorsize;
 else {
  if (*sectorsize < 0 || (*sectorsize % pp->sectorsize) != 0) {
   gctl_error(req, "Invalid sector size.");
   return;
  }
  if (*sectorsize > PAGE_SIZE) {
   gctl_error(req, "warning: Using sectorsize bigger than "
       "the page size!");
  }
  md.md_sectorsize = *sectorsize;
 }

 g_eli_create(req, mp, pp, &md, mkey, -1);
 explicit_bzero(mkey, sizeof(mkey));
 explicit_bzero(&md, sizeof(md));
}
