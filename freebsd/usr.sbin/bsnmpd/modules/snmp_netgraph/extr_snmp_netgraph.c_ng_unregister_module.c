
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgreg {struct lmodule const* mod; } ;
struct lmodule {int dummy; } ;
struct datareg {struct lmodule const* mod; } ;


 struct msgreg* SLIST_FIRST (int *) ;
 struct msgreg* SLIST_NEXT (struct msgreg*,int ) ;
 int SLIST_REMOVE (int *,struct msgreg*,int ,int ) ;
 int datareg ;
 int datareg_list ;
 int free (struct msgreg*) ;
 int link ;
 int msgreg ;
 int msgreg_list ;

void
ng_unregister_module(const struct lmodule *mod)
{
 struct msgreg *m, *m1;
 struct datareg *d, *d1;

 m = SLIST_FIRST(&msgreg_list);
 while (m != ((void*)0)) {
  m1 = SLIST_NEXT(m, link);
  if (m->mod == mod) {
   SLIST_REMOVE(&msgreg_list, m, msgreg, link);
   free(m);
  }
  m = m1;
 }

 d = SLIST_FIRST(&datareg_list);
 while (d != ((void*)0)) {
  d1 = SLIST_NEXT(d, link);
  if (d->mod == mod) {
   SLIST_REMOVE(&datareg_list, d, datareg, link);
   free(d);
  }
  d = d1;
 }
}
