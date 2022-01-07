
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knlist {int kl_autodestroy; } ;


 int KNL_ASSERT_LOCKED (struct knlist*) ;
 int M_KQUEUE ;
 int free (struct knlist*,int ) ;
 int knlist_destroy (struct knlist*) ;
 scalar_t__ knlist_empty (struct knlist*) ;

void
knlist_detach(struct knlist *knl)
{

 KNL_ASSERT_LOCKED(knl);
 knl->kl_autodestroy = 1;
 if (knlist_empty(knl)) {
  knlist_destroy(knl);
  free(knl, M_KQUEUE);
 }
}
