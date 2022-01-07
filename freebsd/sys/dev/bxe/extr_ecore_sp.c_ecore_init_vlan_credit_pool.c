
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ecore_credit_pool_obj {int dummy; } ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_IS_E1x (struct bxe_softc*) ;
 int PF_VLAN_CREDIT_E2 (struct bxe_softc*,scalar_t__) ;
 int ecore_init_credit_pool (struct ecore_credit_pool_obj*,int,int) ;

void ecore_init_vlan_credit_pool(struct bxe_softc *sc,
     struct ecore_credit_pool_obj *p,
     uint8_t func_id,
     uint8_t func_num)
{
 if (CHIP_IS_E1x(sc)) {



  ecore_init_credit_pool(p, 0, -1);
 } else {



  if (func_num > 0) {
   int credit = PF_VLAN_CREDIT_E2(sc, func_num);

   ecore_init_credit_pool(p, -1 , credit);
  } else

   ecore_init_credit_pool(p, 0, 0);
 }
}
