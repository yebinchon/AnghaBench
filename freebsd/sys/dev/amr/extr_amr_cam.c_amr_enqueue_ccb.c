
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ccb {int ccb_h; } ;
struct amr_softc {int amr_cam_ccbq; } ;
struct TYPE_2__ {int tqe; } ;


 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 TYPE_1__ sim_links ;

__attribute__((used)) static __inline void
amr_enqueue_ccb(struct amr_softc *sc, union ccb *ccb)
{

 TAILQ_INSERT_TAIL(&sc->amr_cam_ccbq, &ccb->ccb_h, sim_links.tqe);
}
