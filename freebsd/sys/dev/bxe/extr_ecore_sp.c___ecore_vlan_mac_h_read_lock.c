
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_vlan_mac_obj {int head_reader; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_MSG (struct bxe_softc*,char*,int ) ;
 int ECORE_SUCCESS ;

__attribute__((used)) static int __ecore_vlan_mac_h_read_lock(struct bxe_softc *sc,
     struct ecore_vlan_mac_obj *o)
{

 o->head_reader++;
 ECORE_MSG(sc, "vlan_mac_lock - locked reader - number %d\n",
    o->head_reader);

 return ECORE_SUCCESS;
}
