
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct loginclass {int lc_racct; int lc_name; int lc_refcount; } ;
struct TYPE_4__ {TYPE_1__* td_ucred; } ;
struct TYPE_3__ {struct loginclass* cr_loginclass; } ;


 int LIST_INSERT_HEAD (int *,struct loginclass*,int ) ;
 scalar_t__ MAXLOGNAME ;
 int M_LOGINCLASS ;
 int M_WAITOK ;
 int M_ZERO ;
 TYPE_2__* curthread ;
 int free (struct loginclass*,int ) ;
 int lc_next ;
 int loginclass_hold (struct loginclass*) ;
 struct loginclass* loginclass_lookup (char const*) ;
 int loginclasses ;
 int loginclasses_lock ;
 struct loginclass* malloc (int,int ,int) ;
 int racct_create (int *) ;
 int racct_destroy (int *) ;
 int refcount_init (int *,int) ;
 int rw_rlock (int *) ;
 int rw_runlock (int *) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

struct loginclass *
loginclass_find(const char *name)
{
 struct loginclass *lc, *new_lc;

 if (name[0] == '\0' || strlen(name) >= MAXLOGNAME)
  return (((void*)0));

 lc = curthread->td_ucred->cr_loginclass;
 if (strcmp(name, lc->lc_name) == 0) {
  loginclass_hold(lc);
  return (lc);
 }

 rw_rlock(&loginclasses_lock);
 lc = loginclass_lookup(name);
 rw_runlock(&loginclasses_lock);
 if (lc != ((void*)0))
  return (lc);

 new_lc = malloc(sizeof(*new_lc), M_LOGINCLASS, M_ZERO | M_WAITOK);
 racct_create(&new_lc->lc_racct);
 refcount_init(&new_lc->lc_refcount, 1);
 strcpy(new_lc->lc_name, name);

 rw_wlock(&loginclasses_lock);





 if ((lc = loginclass_lookup(name)) == ((void*)0)) {
  LIST_INSERT_HEAD(&loginclasses, new_lc, lc_next);
  rw_wunlock(&loginclasses_lock);
  lc = new_lc;
 } else {
  rw_wunlock(&loginclasses_lock);
  racct_destroy(&new_lc->lc_racct);
  free(new_lc, M_LOGINCLASS);
 }

 return (lc);
}
