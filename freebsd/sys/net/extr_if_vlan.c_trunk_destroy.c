
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifvlantrunk {TYPE_1__* parent; } ;
struct TYPE_2__ {int * if_vlantrunk; } ;


 int M_VLAN ;
 int TRUNK_LOCK_DESTROY (struct ifvlantrunk*) ;
 int VLAN_XLOCK_ASSERT () ;
 int free (struct ifvlantrunk*,int ) ;
 int if_rele (TYPE_1__*) ;
 int vlan_freehash (struct ifvlantrunk*) ;

__attribute__((used)) static void
trunk_destroy(struct ifvlantrunk *trunk)
{
 VLAN_XLOCK_ASSERT();

 vlan_freehash(trunk);
 trunk->parent->if_vlantrunk = ((void*)0);
 TRUNK_LOCK_DESTROY(trunk);
 if_rele(trunk->parent);
 free(trunk, M_VLAN);
}
