
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prison {scalar_t__ pr_uref; int pr_ref; scalar_t__ pr_vnet; int pr_mtx; int * pr_cpuset; struct prison* pr_ip6; struct prison* pr_ip4; int * pr_root; int pr_childcount; struct prison* pr_parent; int pr_id; } ;
struct TYPE_2__ {scalar_t__ pr_uref; } ;


 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct prison*,int ) ;
 int M_PRISON ;
 int PD_DEREF ;
 int PD_DEUREF ;
 int PD_LIST_SLOCKED ;
 int PD_LIST_XLOCKED ;
 int PD_LOCKED ;
 int PR_METHOD_REMOVE ;
 int TAILQ_REMOVE (int *,struct prison*,int ) ;
 int allprison ;
 int allprison_lock ;
 int cpuset_rel (int *) ;
 int free (struct prison*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int osd_jail_call (struct prison*,int ,int *) ;
 int osd_jail_exit (struct prison*) ;
 int pr_list ;
 int pr_sibling ;
 TYPE_1__ prison0 ;
 int prison_racct_detach (struct prison*) ;
 scalar_t__ racct_enable ;
 int sx_sunlock (int *) ;
 int sx_try_upgrade (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vnet_destroy (scalar_t__) ;
 int vrele (int *) ;

__attribute__((used)) static void
prison_deref(struct prison *pr, int flags)
{
 struct prison *ppr, *tpr;
 int ref, lasturef;

 if (!(flags & PD_LOCKED))
  mtx_lock(&pr->pr_mtx);
 for (;;) {
  if (flags & PD_DEUREF) {
   KASSERT(pr->pr_uref > 0,
       ("prison_deref PD_DEUREF on a dead prison (jid=%d)",
        pr->pr_id));
   pr->pr_uref--;
   lasturef = pr->pr_uref == 0;
   if (lasturef)
    pr->pr_ref++;
   KASSERT(prison0.pr_uref != 0, ("prison0 pr_uref=0"));
  } else
   lasturef = 0;
  if (flags & PD_DEREF) {
   KASSERT(pr->pr_ref > 0,
       ("prison_deref PD_DEREF on a dead prison (jid=%d)",
        pr->pr_id));
   pr->pr_ref--;
  }
  ref = pr->pr_ref;
  mtx_unlock(&pr->pr_mtx);





  if (lasturef) {
   if (!(flags & (PD_LIST_SLOCKED | PD_LIST_XLOCKED))) {
    sx_xlock(&allprison_lock);
    flags |= PD_LIST_XLOCKED;
   }
   (void)osd_jail_call(pr, PR_METHOD_REMOVE, ((void*)0));
   mtx_lock(&pr->pr_mtx);
   ref = --pr->pr_ref;
   mtx_unlock(&pr->pr_mtx);
  }


  if (ref > 0) {
   if (flags & PD_LIST_SLOCKED)
    sx_sunlock(&allprison_lock);
   else if (flags & PD_LIST_XLOCKED)
    sx_xunlock(&allprison_lock);
   return;
  }

  if (flags & PD_LIST_SLOCKED) {
   if (!sx_try_upgrade(&allprison_lock)) {
    sx_sunlock(&allprison_lock);
    sx_xlock(&allprison_lock);
   }
  } else if (!(flags & PD_LIST_XLOCKED))
   sx_xlock(&allprison_lock);

  TAILQ_REMOVE(&allprison, pr, pr_list);
  LIST_REMOVE(pr, pr_sibling);
  ppr = pr->pr_parent;
  for (tpr = ppr; tpr != ((void*)0); tpr = tpr->pr_parent)
   tpr->pr_childcount--;
  sx_xunlock(&allprison_lock);





  if (pr->pr_root != ((void*)0))
   vrele(pr->pr_root);
  mtx_destroy(&pr->pr_mtx);






  if (pr->pr_cpuset != ((void*)0))
   cpuset_rel(pr->pr_cpuset);
  osd_jail_exit(pr);




  free(pr, M_PRISON);


  pr = ppr;
  mtx_lock(&pr->pr_mtx);
  flags = PD_DEREF | PD_DEUREF;
 }
}
