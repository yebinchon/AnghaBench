
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct uidinfo {scalar_t__ ui_uid; int ui_racct; int ui_ref; } ;
struct ucred {struct uidinfo* cr_ruidinfo; struct uidinfo* cr_uidinfo; } ;
struct TYPE_2__ {struct ucred* td_ucred; } ;


 int LIST_INSERT_HEAD (int ,struct uidinfo*,int ) ;
 int M_UIDINFO ;
 int M_WAITOK ;
 int M_ZERO ;
 int UIHASH (scalar_t__) ;
 TYPE_1__* curthread ;
 int free (struct uidinfo*,int ) ;
 struct uidinfo* malloc (int,int ,int) ;
 int racct_create (int *) ;
 int racct_destroy (int *) ;
 int refcount_init (int *,int) ;
 int rw_rlock (int *) ;
 int rw_runlock (int *) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int ui_hash ;
 int uihashtbl_lock ;
 int uihold (struct uidinfo*) ;
 struct uidinfo* uilookup (scalar_t__) ;

struct uidinfo *
uifind(uid_t uid)
{
 struct uidinfo *new_uip, *uip;
 struct ucred *cred;

 cred = curthread->td_ucred;
 if (cred->cr_uidinfo->ui_uid == uid) {
  uip = cred->cr_uidinfo;
  uihold(uip);
  return (uip);
 } else if (cred->cr_ruidinfo->ui_uid == uid) {
  uip = cred->cr_ruidinfo;
  uihold(uip);
  return (uip);
 }

 rw_rlock(&uihashtbl_lock);
 uip = uilookup(uid);
 rw_runlock(&uihashtbl_lock);
 if (uip != ((void*)0))
  return (uip);

 new_uip = malloc(sizeof(*new_uip), M_UIDINFO, M_WAITOK | M_ZERO);
 racct_create(&new_uip->ui_racct);
 refcount_init(&new_uip->ui_ref, 1);
 new_uip->ui_uid = uid;

 rw_wlock(&uihashtbl_lock);





 if ((uip = uilookup(uid)) == ((void*)0)) {
  LIST_INSERT_HEAD(UIHASH(uid), new_uip, ui_hash);
  rw_wunlock(&uihashtbl_lock);
  uip = new_uip;
 } else {
  rw_wunlock(&uihashtbl_lock);
  racct_destroy(&new_uip->ui_racct);
  free(new_uip, M_UIDINFO);
 }
 return (uip);
}
