
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_ref; scalar_t__ cr_groups; scalar_t__ cr_smallgroups; int * cr_loginclass; int * cr_prison; int * cr_ruidinfo; int * cr_uidinfo; } ;


 int KASSERT (int,char*) ;
 int M_CRED ;
 int audit_cred_destroy (struct ucred*) ;
 int free (struct ucred*,int ) ;
 int loginclass_free (int *) ;
 int mac_cred_destroy (struct ucred*) ;
 int prison_free (int *) ;
 scalar_t__ refcount_release (int*) ;
 int uifree (int *) ;

void
crfree(struct ucred *cr)
{

 KASSERT(cr->cr_ref > 0, ("bad ucred refcount: %d", cr->cr_ref));
 KASSERT(cr->cr_ref != 0xdeadc0de, ("dangling reference to ucred"));
 if (refcount_release(&cr->cr_ref)) {





  if (cr->cr_uidinfo != ((void*)0))
   uifree(cr->cr_uidinfo);
  if (cr->cr_ruidinfo != ((void*)0))
   uifree(cr->cr_ruidinfo);



  if (cr->cr_prison != ((void*)0))
   prison_free(cr->cr_prison);
  if (cr->cr_loginclass != ((void*)0))
   loginclass_free(cr->cr_loginclass);






  if (cr->cr_groups != cr->cr_smallgroups)
   free(cr->cr_groups, M_CRED);
  free(cr, M_CRED);
 }
}
