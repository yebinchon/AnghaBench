
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_provider {int mediasize; } ;
struct g_class {int dummy; } ;


 int G_LABEL_DEBUG (int,char*,char const*) ;
 int G_LABEL_DIR ;
 int g_label_create (struct gctl_req*,struct g_class*,struct g_provider*,char const*,int ,int ) ;
 struct g_provider* g_provider_by_name (char const*) ;
 int g_topology_assert () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

__attribute__((used)) static void
g_label_ctl_create(struct gctl_req *req, struct g_class *mp)
{
 struct g_provider *pp;
 const char *name;
 int *nargs;

 g_topology_assert();

 nargs = gctl_get_paraml(req, "nargs", sizeof(*nargs));
 if (nargs == ((void*)0)) {
  gctl_error(req, "No '%s' argument", "nargs");
  return;
 }
 if (*nargs != 2) {
  gctl_error(req, "Invalid number of arguments.");
  return;
 }



 name = gctl_get_asciiparam(req, "arg1");
 if (name == ((void*)0)) {
  gctl_error(req, "No 'arg%d' argument", 1);
  return;
 }
 if (strncmp(name, "/dev/", strlen("/dev/")) == 0)
  name += strlen("/dev/");
 pp = g_provider_by_name(name);
 if (pp == ((void*)0)) {
  G_LABEL_DEBUG(1, "Provider %s is invalid.", name);
  gctl_error(req, "Provider %s is invalid.", name);
  return;
 }



 name = gctl_get_asciiparam(req, "arg0");
 if (name == ((void*)0)) {
  gctl_error(req, "No 'arg%d' argument", 0);
  return;
 }
 g_label_create(req, mp, pp, name, G_LABEL_DIR, pp->mediasize);
}
