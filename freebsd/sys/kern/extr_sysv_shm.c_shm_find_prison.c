
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct prison* cr_prison; } ;
struct prison {int dummy; } ;


 struct prison* osd_jail_get (struct prison*,int ) ;
 int prison_lock (struct prison*) ;
 int prison_unlock (struct prison*) ;
 int shm_prison_slot ;

__attribute__((used)) static struct prison *
shm_find_prison(struct ucred *cred)
{
 struct prison *pr, *rpr;

 pr = cred->cr_prison;
 prison_lock(pr);
 rpr = osd_jail_get(pr, shm_prison_slot);
 prison_unlock(pr);
 return rpr;
}
