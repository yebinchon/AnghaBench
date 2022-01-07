
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtxq_chain {int uc_pi_list; } ;
struct umtx_pi {scalar_t__ pi_refcount; int pi_blocked; int * pi_owner; int pi_key; } ;


 int KASSERT (int,char*) ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct umtx_pi*,int ) ;
 int UMTXQ_LOCKED_ASSERT (struct umtxq_chain*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pi_hashlink ;
 int umtx_lock ;
 int umtx_pi_disown (struct umtx_pi*) ;
 int umtx_pi_free (struct umtx_pi*) ;
 struct umtxq_chain* umtxq_getchain (int *) ;

__attribute__((used)) static void
umtx_pi_unref(struct umtx_pi *pi)
{
 struct umtxq_chain *uc;

 uc = umtxq_getchain(&pi->pi_key);
 UMTXQ_LOCKED_ASSERT(uc);
 KASSERT(pi->pi_refcount > 0, ("invalid reference count"));
 if (--pi->pi_refcount == 0) {
  mtx_lock(&umtx_lock);
  if (pi->pi_owner != ((void*)0))
   umtx_pi_disown(pi);
  KASSERT(TAILQ_EMPTY(&pi->pi_blocked),
   ("blocked queue not empty"));
  mtx_unlock(&umtx_lock);
  TAILQ_REMOVE(&uc->uc_pi_list, pi, pi_hashlink);
  umtx_pi_free(pi);
 }
}
