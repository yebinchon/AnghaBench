
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wds {struct wds* next; int ifname; } ;


 int IFNAMSIZ ;
 int free (struct wds*) ;
 scalar_t__ strncmp (int ,char const*,int ) ;
 struct wds* wds ;

__attribute__((used)) static void
wds_destroy(const char *ifname)
{
 struct wds *p, **pp;

 for (pp = &wds; (p = *pp) != ((void*)0); pp = &p->next)
  if (strncmp(p->ifname, ifname, IFNAMSIZ) == 0)
   break;
 if (p != ((void*)0)) {
  *pp = p->next;

  free(p);
  return;
 }
}
