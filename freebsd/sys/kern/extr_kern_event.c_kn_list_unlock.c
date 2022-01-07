
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knlist {int kl_lockarg; int (* kl_unlock ) (int ) ;scalar_t__ kl_autodestroy; } ;


 int M_KQUEUE ;
 int free (struct knlist*,int ) ;
 int knlist_destroy (struct knlist*) ;
 scalar_t__ knlist_empty (struct knlist*) ;
 int stub1 (int ) ;

__attribute__((used)) static void
kn_list_unlock(struct knlist *knl)
{
 bool do_free;

 if (knl == ((void*)0))
  return;
 do_free = knl->kl_autodestroy && knlist_empty(knl);
 knl->kl_unlock(knl->kl_lockarg);
 if (do_free) {
  knlist_destroy(knl);
  free(knl, M_KQUEUE);
 }
}
