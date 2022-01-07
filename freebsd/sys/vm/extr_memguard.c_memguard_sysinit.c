
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_ULONG ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int *,struct sysctl_oid_list*,int ,char*,int,int *,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UAUTO (int *,struct sysctl_oid_list*,int ,char*,int,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_STATIC_CHILDREN (int ) ;
 int _vm_memguard ;
 int memguard_base ;
 int memguard_mapsize ;
 int memguard_sysctl_mapused ;

__attribute__((used)) static void
memguard_sysinit(void)
{
 struct sysctl_oid_list *parent;

 parent = SYSCTL_STATIC_CHILDREN(_vm_memguard);
 SYSCTL_ADD_UAUTO(((void*)0), parent, OID_AUTO, "mapstart",
     CTLFLAG_RD, &memguard_base,
     "MemGuard KVA base");
 SYSCTL_ADD_UAUTO(((void*)0), parent, OID_AUTO, "maplimit",
     CTLFLAG_RD, &memguard_mapsize,
     "MemGuard KVA size");
 SYSCTL_ADD_PROC(((void*)0), parent, OID_AUTO, "mapused",
     CTLFLAG_RD | CTLTYPE_ULONG, ((void*)0), 0, memguard_sysctl_mapused, "LU",
     "MemGuard KVA used");
}
