
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* p_aio; } ;
struct knote {TYPE_2__ kn_ptr; } ;
struct knlist {int kl_lockarg; int (* kl_unlock ) (int ) ;int (* kl_lock ) (int ) ;} ;
struct TYPE_3__ {struct knlist klist; } ;


 int knlist_empty (struct knlist*) ;
 int knlist_remove (struct knlist*,struct knote*,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void
filt_aiodetach(struct knote *kn)
{
 struct knlist *knl;

 knl = &kn->kn_ptr.p_aio->klist;
 knl->kl_lock(knl->kl_lockarg);
 if (!knlist_empty(knl))
  knlist_remove(knl, kn, 1);
 knl->kl_unlock(knl->kl_lockarg);
}
