
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_file_svid {scalar_t__ ns_ucred; int ns_svid; int ns_active; int ns_refs; } ;


 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct nlm_file_svid*,int ) ;
 int M_NLM ;
 int crfree (scalar_t__) ;
 int free (struct nlm_file_svid*,int ) ;
 int free_unr (int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nlm_svid_allocator ;
 int nlm_svid_lock ;
 int ns_link ;

__attribute__((used)) static void
nlm_free_svid(struct nlm_file_svid *ns)
{

 mtx_lock(&nlm_svid_lock);
 ns->ns_refs--;
 if (!ns->ns_refs) {
  KASSERT(!ns->ns_active, ("Freeing active SVID"));
  LIST_REMOVE(ns, ns_link);
  mtx_unlock(&nlm_svid_lock);
  free_unr(nlm_svid_allocator, ns->ns_svid);
  if (ns->ns_ucred)
   crfree(ns->ns_ucred);
  free(ns, M_NLM);
 } else {
  mtx_unlock(&nlm_svid_lock);
 }
}
