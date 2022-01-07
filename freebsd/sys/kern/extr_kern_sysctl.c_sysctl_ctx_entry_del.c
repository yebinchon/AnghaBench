
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sysctl_ctx_entry {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int M_SYSCTLOID ;
 int SYSCTL_WLOCK () ;
 int SYSCTL_WUNLOCK () ;
 int TAILQ_REMOVE (struct sysctl_ctx_list*,struct sysctl_ctx_entry*,int ) ;
 int free (struct sysctl_ctx_entry*,int ) ;
 int link ;
 struct sysctl_ctx_entry* sysctl_ctx_entry_find (struct sysctl_ctx_list*,struct sysctl_oid*) ;

int
sysctl_ctx_entry_del(struct sysctl_ctx_list *clist, struct sysctl_oid *oidp)
{
 struct sysctl_ctx_entry *e;

 if (clist == ((void*)0) || oidp == ((void*)0))
  return (EINVAL);
 SYSCTL_WLOCK();
 e = sysctl_ctx_entry_find(clist, oidp);
 if (e != ((void*)0)) {
  TAILQ_REMOVE(clist, e, link);
  SYSCTL_WUNLOCK();
  free(e, M_SYSCTLOID);
  return (0);
 } else {
  SYSCTL_WUNLOCK();
  return (ENOENT);
 }
}
