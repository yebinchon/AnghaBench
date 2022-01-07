
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int16_t ;
struct mrsas_softc {scalar_t__ pd_info_mem; int mask_interrupts; int mrsas_dev; TYPE_1__* target_list; } ;
struct TYPE_2__ {size_t target_id; } ;


 size_t MRSAS_MAX_PD ;
 int device_printf (int ,char*,char*,size_t) ;
 int mrsas_get_pd_info (struct mrsas_softc*,size_t) ;

__attribute__((used)) static void mrsas_add_target(struct mrsas_softc *sc,
 u_int16_t target_id)
{
 sc->target_list[target_id].target_id = target_id;

 device_printf(sc->mrsas_dev,
  "%s created target ID: 0x%x\n",
  (target_id < MRSAS_MAX_PD ? "System PD" : "VD"),
  (target_id < MRSAS_MAX_PD ? target_id : (target_id - MRSAS_MAX_PD)));




 if (!sc->mask_interrupts && sc->pd_info_mem &&
  (target_id < MRSAS_MAX_PD))
  mrsas_get_pd_info(sc, target_id);

}
