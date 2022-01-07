
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_list {int dummy; } ;
struct mac_list {int dummy; } ;
struct iavf_sc {void* vlan_filters; void* mac_filters; } ;


 int M_IAVF ;
 int M_WAITOK ;
 int M_ZERO ;
 int SLIST_INIT (void*) ;
 void* malloc (int,int ,int) ;

__attribute__((used)) static void
iavf_init_filters(struct iavf_sc *sc)
{
 sc->mac_filters = malloc(sizeof(struct mac_list),
     M_IAVF, M_WAITOK | M_ZERO);
 SLIST_INIT(sc->mac_filters);
 sc->vlan_filters = malloc(sizeof(struct vlan_list),
     M_IAVF, M_WAITOK | M_ZERO);
 SLIST_INIT(sc->vlan_filters);
}
