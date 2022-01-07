
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uidinfo {scalar_t__ ui_sbsize; int ui_uid; scalar_t__ ui_proccnt; scalar_t__ ui_vmsize; int ui_racct; int ui_ref; } ;


 int LIST_REMOVE (struct uidinfo*,int ) ;
 int M_UIDINFO ;
 int free (struct uidinfo*,int ) ;
 int printf (char*,int,unsigned long long) ;
 int racct_destroy (int *) ;
 scalar_t__ refcount_release (int *) ;
 scalar_t__ refcount_release_if_not_last (int *) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int ui_hash ;
 int uihashtbl_lock ;

void
uifree(struct uidinfo *uip)
{

 if (refcount_release_if_not_last(&uip->ui_ref))
  return;

 rw_wlock(&uihashtbl_lock);
 if (refcount_release(&uip->ui_ref) == 0) {
  rw_wunlock(&uihashtbl_lock);
  return;
 }

 racct_destroy(&uip->ui_racct);
 LIST_REMOVE(uip, ui_hash);
 rw_wunlock(&uihashtbl_lock);

 if (uip->ui_sbsize != 0)
  printf("freeing uidinfo: uid = %d, sbsize = %ld\n",
      uip->ui_uid, uip->ui_sbsize);
 if (uip->ui_proccnt != 0)
  printf("freeing uidinfo: uid = %d, proccnt = %ld\n",
      uip->ui_uid, uip->ui_proccnt);
 if (uip->ui_vmsize != 0)
  printf("freeing uidinfo: uid = %d, swapuse = %lld\n",
      uip->ui_uid, (unsigned long long)uip->ui_vmsize);
 free(uip, M_UIDINFO);
}
