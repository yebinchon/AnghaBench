
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct gctl_req {int dummy; } ;
struct g_class {int dummy; } ;


 scalar_t__ G_RAID_VERSION ;
 int g_raid_ctl_label (struct gctl_req*,struct g_class*) ;
 int g_raid_ctl_other (struct gctl_req*,struct g_class*) ;
 int g_raid_ctl_stop (struct gctl_req*,struct g_class*) ;
 int g_topology_assert () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 scalar_t__* gctl_get_paraml (struct gctl_req*,char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;

void
g_raid_ctl(struct gctl_req *req, struct g_class *mp, const char *verb)
{
 uint32_t *version;

 g_topology_assert();

 version = gctl_get_paraml(req, "version", sizeof(*version));
 if (version == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "version");
  return;
 }
 if (*version != G_RAID_VERSION) {
  gctl_error(req, "Userland and kernel parts are out of sync.");
  return;
 }

 if (strcmp(verb, "label") == 0)
  g_raid_ctl_label(req, mp);
 else if (strcmp(verb, "stop") == 0)
  g_raid_ctl_stop(req, mp);
 else
  g_raid_ctl_other(req, mp);
}
