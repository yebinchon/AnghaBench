
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int16_t ;
struct mrsas_softc {int mrsas_dev; TYPE_1__* target_list; } ;
struct TYPE_2__ {int target_id; } ;


 size_t MRSAS_MAX_PD ;
 int device_printf (int ,char*,char*,size_t) ;

__attribute__((used)) static void mrsas_remove_target(struct mrsas_softc *sc,
 u_int16_t target_id)
{
 sc->target_list[target_id].target_id = 0xffff;
 device_printf(sc->mrsas_dev,
  "%s deleted target ID: 0x%x\n",
  (target_id < MRSAS_MAX_PD ? "System PD" : "VD"),
  (target_id < MRSAS_MAX_PD ? target_id : (target_id - MRSAS_MAX_PD)));
}
