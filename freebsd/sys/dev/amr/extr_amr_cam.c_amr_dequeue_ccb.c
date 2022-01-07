
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ccb {int ccb_h; } ;
struct amr_softc {int amr_cam_ccbq; } ;
struct TYPE_2__ {int tqe; } ;


 scalar_t__ TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 TYPE_1__ sim_links ;

__attribute__((used)) static __inline union ccb *
amr_dequeue_ccb(struct amr_softc *sc)
{
 union ccb *ccb;

 if ((ccb = (union ccb *)TAILQ_FIRST(&sc->amr_cam_ccbq)) != ((void*)0))
  TAILQ_REMOVE(&sc->amr_cam_ccbq, &ccb->ccb_h, sim_links.tqe);
 return(ccb);
}
