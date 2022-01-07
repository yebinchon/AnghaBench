
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_provider {int dummy; } ;


 struct g_provider* g_provider_by_name (char const*) ;
 int gctl_error (struct gctl_req*,char*,char const*) ;
 char* gctl_get_asciiparam (struct gctl_req*,char const*) ;

struct g_provider *
gctl_get_provider(struct gctl_req *req, char const *arg)
{
 char const *p;
 struct g_provider *pp;

 p = gctl_get_asciiparam(req, arg);
 if (p == ((void*)0))
  return (((void*)0));
 pp = g_provider_by_name(p);
 if (pp != ((void*)0))
  return (pp);
 gctl_error(req, "Provider not found: \"%s\"", p);
 return (((void*)0));
}
