
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfip_softc {struct mfi_softc* mfi_sc; } ;
struct mfi_softc {int (* mfi_intr_ptr ) (struct mfi_softc*) ;} ;
struct cam_sim {int dummy; } ;


 struct mfip_softc* cam_sim_softc (struct cam_sim*) ;
 int stub1 (struct mfi_softc*) ;

__attribute__((used)) static void
mfip_cam_poll(struct cam_sim *sim)
{
 struct mfip_softc *sc = cam_sim_softc(sim);
 struct mfi_softc *mfisc = sc->mfi_sc;

 mfisc->mfi_intr_ptr(mfisc);
}
