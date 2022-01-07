
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cam_sim {int dummy; } ;
struct TYPE_4__ {scalar_t__ vbus; } ;
typedef TYPE_1__* PVBUS_EXT ;
typedef int PVBUS ;


 TYPE_1__* cam_sim_softc (struct cam_sim*) ;
 int hpt_assert_vbus_locked (TYPE_1__*) ;
 int ldm_intr (int ) ;

__attribute__((used)) static void hpt_poll(struct cam_sim *sim)
{
 PVBUS_EXT vbus_ext = cam_sim_softc(sim);
 hpt_assert_vbus_locked(vbus_ext);
 ldm_intr((PVBUS)vbus_ext->vbus);
}
