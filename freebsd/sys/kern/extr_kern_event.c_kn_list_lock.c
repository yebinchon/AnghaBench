
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {struct knlist* kn_knlist; } ;
struct knlist {int kl_lockarg; int (* kl_lock ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static struct knlist *
kn_list_lock(struct knote *kn)
{
 struct knlist *knl;

 knl = kn->kn_knlist;
 if (knl != ((void*)0))
  knl->kl_lock(knl->kl_lockarg);
 return (knl);
}
