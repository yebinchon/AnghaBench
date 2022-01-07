
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int oid_kind; scalar_t__ oid_handler; int oid_number; int oid_name; } ;


 int CTLTYPE ;
 int CTLTYPE_NODE ;
 int CTL_MAXNAME ;
 int ENOENT ;
 struct sysctl_oid* SLIST_FIRST (struct sysctl_oid_list*) ;
 struct sysctl_oid* SLIST_NEXT (struct sysctl_oid*,int ) ;
 int SYSCTL_ASSERT_LOCKED () ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int oid_link ;
 scalar_t__ strcmp (char*,int ) ;
 char* strsep (char**,char*) ;
 struct sysctl_oid_list sysctl__children ;

__attribute__((used)) static int
name2oid(char *name, int *oid, int *len, struct sysctl_oid **oidpp)
{
 struct sysctl_oid *oidp;
 struct sysctl_oid_list *lsp = &sysctl__children;
 char *p;

 SYSCTL_ASSERT_LOCKED();

 for (*len = 0; *len < CTL_MAXNAME;) {
  p = strsep(&name, ".");

  oidp = SLIST_FIRST(lsp);
  for (;; oidp = SLIST_NEXT(oidp, oid_link)) {
   if (oidp == ((void*)0))
    return (ENOENT);
   if (strcmp(p, oidp->oid_name) == 0)
    break;
  }
  *oid++ = oidp->oid_number;
  (*len)++;

  if (name == ((void*)0) || *name == '\0') {
   if (oidpp)
    *oidpp = oidp;
   return (0);
  }

  if ((oidp->oid_kind & CTLTYPE) != CTLTYPE_NODE)
   break;

  if (oidp->oid_handler)
   break;

  lsp = SYSCTL_CHILDREN(oidp);
 }
 return (ENOENT);
}
