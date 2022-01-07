
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int oid_kind; } ;


 int CTLFLAG_DORMANT ;
 int CTLTYPE ;
 int CTLTYPE_NODE ;
 int KASSERT (int,char*) ;
 int sysctl_register_oid (struct sysctl_oid*) ;

void
sysctl_register_disabled_oid(struct sysctl_oid *oidp)
{






 KASSERT((oidp->oid_kind & CTLFLAG_DORMANT) == 0,
     ("internal flag is set in oid_kind"));
 if ((oidp->oid_kind & CTLTYPE) != CTLTYPE_NODE)
  oidp->oid_kind |= CTLFLAG_DORMANT;
 sysctl_register_oid(oidp);
}
