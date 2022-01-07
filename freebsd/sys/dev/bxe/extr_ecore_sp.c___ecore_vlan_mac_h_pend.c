
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_vlan_mac_obj {unsigned long saved_ramrod_flags; int head_exe_request; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_MSG (struct bxe_softc*,char*,unsigned long) ;
 int TRUE ;

__attribute__((used)) static void __ecore_vlan_mac_h_pend(struct bxe_softc *sc,
        struct ecore_vlan_mac_obj *o,
        unsigned long ramrod_flags)
{
 o->head_exe_request = TRUE;
 o->saved_ramrod_flags = ramrod_flags;
 ECORE_MSG(sc, "Placing pending execution with ramrod flags %lu\n",
    ramrod_flags);
}
