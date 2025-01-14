
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct gctl_req {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_class {int dummy; } ;
typedef int param ;
typedef int off_t ;
typedef int intmax_t ;


 int EIO ;
 int G_NOP_DEBUG (int,char*,char const*) ;
 scalar_t__ g_nop_create (struct gctl_req*,struct g_class*,struct g_provider*,int,int,int,int,int,int,int,int ,int ,int,int ,int ,char const*) ;
 struct g_provider* g_provider_by_name (char const*) ;
 int g_topology_assert () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int* gctl_get_paraml_opt (struct gctl_req*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

__attribute__((used)) static void
g_nop_ctl_create(struct gctl_req *req, struct g_class *mp)
{
 struct g_provider *pp;
 intmax_t *val, error, rfailprob, wfailprob, count_until_fail, offset,
     secsize, size, stripesize, stripeoffset, delaymsec,
     rdelayprob, wdelayprob;
 const char *name, *physpath;
 char param[16];
 int i, *nargs;

 g_topology_assert();

 error = -1;
 rfailprob = -1;
 wfailprob = -1;
 count_until_fail = -1;
 offset = 0;
 secsize = 0;
 size = 0;
 stripesize = 0;
 stripeoffset = 0;
 delaymsec = -1;
 rdelayprob = -1;
 wdelayprob = -1;

 nargs = gctl_get_paraml(req, "nargs", sizeof(*nargs));
 if (nargs == ((void*)0)) {
  gctl_error(req, "No '%s' argument", "nargs");
  return;
 }
 if (*nargs <= 0) {
  gctl_error(req, "Missing device(s).");
  return;
 }
 val = gctl_get_paraml_opt(req, "error", sizeof(*val));
 if (val != ((void*)0)) {
  error = *val;
 }
 val = gctl_get_paraml_opt(req, "rfailprob", sizeof(*val));
 if (val != ((void*)0)) {
  rfailprob = *val;
  if (rfailprob < -1 || rfailprob > 100) {
   gctl_error(req, "Invalid '%s' argument", "rfailprob");
   return;
  }
 }
 val = gctl_get_paraml_opt(req, "wfailprob", sizeof(*val));
 if (val != ((void*)0)) {
  wfailprob = *val;
  if (wfailprob < -1 || wfailprob > 100) {
   gctl_error(req, "Invalid '%s' argument", "wfailprob");
   return;
  }
 }
 val = gctl_get_paraml_opt(req, "delaymsec", sizeof(*val));
 if (val != ((void*)0)) {
  delaymsec = *val;
  if (delaymsec < 1 && delaymsec != -1) {
   gctl_error(req, "Invalid '%s' argument", "delaymsec");
   return;
  }
 }
 val = gctl_get_paraml_opt(req, "rdelayprob", sizeof(*val));
 if (val != ((void*)0)) {
  rdelayprob = *val;
  if (rdelayprob < -1 || rdelayprob > 100) {
   gctl_error(req, "Invalid '%s' argument", "rdelayprob");
   return;
  }
 }
 val = gctl_get_paraml_opt(req, "wdelayprob", sizeof(*val));
 if (val != ((void*)0)) {
  wdelayprob = *val;
  if (wdelayprob < -1 || wdelayprob > 100) {
   gctl_error(req, "Invalid '%s' argument", "wdelayprob");
   return;
  }
 }
 val = gctl_get_paraml_opt(req, "count_until_fail", sizeof(*val));
 if (val != ((void*)0)) {
  count_until_fail = *val;
  if (count_until_fail < -1) {
   gctl_error(req, "Invalid '%s' argument",
       "count_until_fail");
   return;
  }
 }
 val = gctl_get_paraml_opt(req, "offset", sizeof(*val));
 if (val != ((void*)0)) {
  offset = *val;
  if (offset < 0) {
   gctl_error(req, "Invalid '%s' argument", "offset");
   return;
  }
 }
 val = gctl_get_paraml_opt(req, "size", sizeof(*val));
 if (val != ((void*)0)) {
  size = *val;
  if (size < 0) {
   gctl_error(req, "Invalid '%s' argument", "size");
   return;
  }
 }
 val = gctl_get_paraml_opt(req, "secsize", sizeof(*val));
 if (val != ((void*)0)) {
  secsize = *val;
  if (secsize < 0) {
   gctl_error(req, "Invalid '%s' argument", "secsize");
   return;
  }
 }
 val = gctl_get_paraml_opt(req, "stripesize", sizeof(*val));
 if (val != ((void*)0)) {
  stripesize = *val;
  if (stripesize < 0) {
   gctl_error(req, "Invalid '%s' argument", "stripesize");
   return;
  }
 }
 val = gctl_get_paraml_opt(req, "stripeoffset", sizeof(*val));
 if (val != ((void*)0)) {
  stripeoffset = *val;
  if (stripeoffset < 0) {
   gctl_error(req, "Invalid '%s' argument",
       "stripeoffset");
   return;
  }
 }
 physpath = gctl_get_asciiparam(req, "physpath");

 for (i = 0; i < *nargs; i++) {
  snprintf(param, sizeof(param), "arg%d", i);
  name = gctl_get_asciiparam(req, param);
  if (name == ((void*)0)) {
   gctl_error(req, "No 'arg%d' argument", i);
   return;
  }
  if (strncmp(name, "/dev/", strlen("/dev/")) == 0)
   name += strlen("/dev/");
  pp = g_provider_by_name(name);
  if (pp == ((void*)0)) {
   G_NOP_DEBUG(1, "Provider %s is invalid.", name);
   gctl_error(req, "Provider %s is invalid.", name);
   return;
  }
  if (g_nop_create(req, mp, pp,
      error == -1 ? EIO : (int)error,
      count_until_fail == -1 ? 0 : (u_int)count_until_fail,
      rfailprob == -1 ? 0 : (u_int)rfailprob,
      wfailprob == -1 ? 0 : (u_int)wfailprob,
      delaymsec == -1 ? 1 : (u_int)delaymsec,
      rdelayprob == -1 ? 0 : (u_int)rdelayprob,
      wdelayprob == -1 ? 0 : (u_int)wdelayprob,
      (off_t)offset, (off_t)size, (u_int)secsize,
      (off_t)stripesize, (off_t)stripeoffset,
      physpath) != 0) {
   return;
  }
 }
}
