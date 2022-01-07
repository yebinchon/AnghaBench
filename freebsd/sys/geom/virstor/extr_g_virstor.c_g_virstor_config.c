
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct gctl_req {int dummy; } ;
struct g_class {int dummy; } ;


 scalar_t__ G_VIRSTOR_VERSION ;
 int g_topology_assert () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 scalar_t__* gctl_get_paraml (struct gctl_req*,char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int virstor_ctl_add (struct gctl_req*,struct g_class*) ;
 int virstor_ctl_remove (struct gctl_req*,struct g_class*) ;
 int virstor_ctl_stop (struct gctl_req*,struct g_class*) ;

__attribute__((used)) static void
g_virstor_config(struct gctl_req *req, struct g_class *cp, char const *verb)
{
 uint32_t *version;

 g_topology_assert();

 version = gctl_get_paraml(req, "version", sizeof(*version));
 if (version == ((void*)0)) {
  gctl_error(req, "Failed to get 'version' argument");
  return;
 }
 if (*version != G_VIRSTOR_VERSION) {
  gctl_error(req, "Userland and kernel versions out of sync");
  return;
 }

 g_topology_unlock();
 if (strcmp(verb, "add") == 0)
  virstor_ctl_add(req, cp);
 else if (strcmp(verb, "stop") == 0 || strcmp(verb, "destroy") == 0)
  virstor_ctl_stop(req, cp);
 else if (strcmp(verb, "remove") == 0)
  virstor_ctl_remove(req, cp);
 else
  gctl_error(req, "unknown verb: '%s'", verb);
 g_topology_lock();
}
