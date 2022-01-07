
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sysctl_ctx_entry {struct sysctl_oid* entry; } ;


 int M_SYSCTLOID ;
 int M_WAITOK ;
 int SYSCTL_ASSERT_WLOCKED () ;
 int TAILQ_INSERT_HEAD (struct sysctl_ctx_list*,struct sysctl_ctx_entry*,int ) ;
 int link ;
 struct sysctl_ctx_entry* malloc (int,int ,int ) ;

struct sysctl_ctx_entry *
sysctl_ctx_entry_add(struct sysctl_ctx_list *clist, struct sysctl_oid *oidp)
{
 struct sysctl_ctx_entry *e;

 SYSCTL_ASSERT_WLOCKED();
 if (clist == ((void*)0) || oidp == ((void*)0))
  return(((void*)0));
 e = malloc(sizeof(struct sysctl_ctx_entry), M_SYSCTLOID, M_WAITOK);
 e->entry = oidp;
 TAILQ_INSERT_HEAD(clist, e, link);
 return (e);
}
