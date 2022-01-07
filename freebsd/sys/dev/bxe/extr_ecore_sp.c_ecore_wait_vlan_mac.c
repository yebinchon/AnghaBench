
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_raw_obj {int (* wait_comp ) (struct bxe_softc*,struct ecore_raw_obj*) ;} ;
struct ecore_exe_queue_obj {int dummy; } ;
struct ecore_vlan_mac_obj {struct ecore_raw_obj raw; struct ecore_exe_queue_obj exe_queue; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_SUCCESS ;
 int ECORE_TIMEOUT ;
 int ECORE_WAIT (struct bxe_softc*,int) ;
 int ecore_exe_queue_empty (struct ecore_exe_queue_obj*) ;
 int stub1 (struct bxe_softc*,struct ecore_raw_obj*) ;

__attribute__((used)) static int ecore_wait_vlan_mac(struct bxe_softc *sc,
          struct ecore_vlan_mac_obj *o)
{
 int cnt = 5000, rc;
 struct ecore_exe_queue_obj *exeq = &o->exe_queue;
 struct ecore_raw_obj *raw = &o->raw;

 while (cnt--) {

  rc = raw->wait_comp(sc, raw);
  if (rc)
   return rc;


  if (!ecore_exe_queue_empty(exeq))
   ECORE_WAIT(sc, 1000);
  else
   return ECORE_SUCCESS;
 }

 return ECORE_TIMEOUT;
}
