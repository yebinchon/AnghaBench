
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct gctl_req {int dummy; } ;
struct g_class {int dummy; } ;


 scalar_t__ G_SCHED_VERSION ;
 int g_sched_ctl_configure (struct gctl_req*,struct g_class*) ;
 int g_sched_ctl_create (struct gctl_req*,struct g_class*,int) ;
 int g_sched_ctl_destroy (struct gctl_req*,struct g_class*) ;
 int g_topology_assert () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 scalar_t__* gctl_get_paraml (struct gctl_req*,char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
g_sched_config(struct gctl_req *req, struct g_class *mp, const char *verb)
{
 uint32_t *version;

 g_topology_assert();

 version = gctl_get_paraml(req, "version", sizeof(*version));
 if (version == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "version");
  return;
 }

 if (*version != G_SCHED_VERSION) {
  gctl_error(req, "Userland and kernel parts are "
      "out of sync.");
  return;
 }

 if (strcmp(verb, "create") == 0) {
  g_sched_ctl_create(req, mp, 0);
  return;
 } else if (strcmp(verb, "insert") == 0) {
  g_sched_ctl_create(req, mp, 1);
  return;
 } else if (strcmp(verb, "configure") == 0) {
  g_sched_ctl_configure(req, mp);
  return;
 } else if (strcmp(verb, "destroy") == 0) {
  g_sched_ctl_destroy(req, mp);
  return;
 }

 gctl_error(req, "Unknown verb.");
}
