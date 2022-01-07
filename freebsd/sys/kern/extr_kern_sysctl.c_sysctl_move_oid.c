
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int oid_number; struct sysctl_oid_list* oid_parent; int oid_name; } ;


 int EEXIST ;
 int OID_AUTO ;
 int SYSCTL_WLOCK () ;
 int SYSCTL_WUNLOCK () ;
 struct sysctl_oid* sysctl_find_oidname (int ,struct sysctl_oid_list*) ;
 int sysctl_register_oid (struct sysctl_oid*) ;
 int sysctl_unregister_oid (struct sysctl_oid*) ;

int
sysctl_move_oid(struct sysctl_oid *oid, struct sysctl_oid_list *parent)
{
 struct sysctl_oid *oidp;

 SYSCTL_WLOCK();
 if (oid->oid_parent == parent) {
  SYSCTL_WUNLOCK();
  return (0);
 }
 oidp = sysctl_find_oidname(oid->oid_name, parent);
 if (oidp != ((void*)0)) {
  SYSCTL_WUNLOCK();
  return (EEXIST);
 }
 sysctl_unregister_oid(oid);
 oid->oid_parent = parent;
 oid->oid_number = OID_AUTO;
 sysctl_register_oid(oid);
 SYSCTL_WUNLOCK();
 return (0);
}
