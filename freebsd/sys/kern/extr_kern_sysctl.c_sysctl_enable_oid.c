
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int oid_kind; } ;


 int CTLFLAG_DORMANT ;
 int CTLTYPE ;
 int CTLTYPE_NODE ;
 int KASSERT (int,char*) ;
 int SYSCTL_ASSERT_WLOCKED () ;

void
sysctl_enable_oid(struct sysctl_oid *oidp)
{

 SYSCTL_ASSERT_WLOCKED();
 if ((oidp->oid_kind & CTLTYPE) == CTLTYPE_NODE) {
  KASSERT((oidp->oid_kind & CTLFLAG_DORMANT) == 0,
      ("sysctl node is marked as dormant"));
  return;
 }
 KASSERT((oidp->oid_kind & CTLFLAG_DORMANT) != 0,
     ("enabling already enabled sysctl oid"));
 oidp->oid_kind &= ~CTLFLAG_DORMANT;
}
