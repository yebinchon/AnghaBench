
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int dummy; } ;
struct cam_sim {int dummy; } ;


 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,int ) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int tws_intr (void*) ;

__attribute__((used)) static void
tws_poll(struct cam_sim *sim)
{
    struct tws_softc *sc = (struct tws_softc *)cam_sim_softc(sim);
    TWS_TRACE_DEBUG(sc, "entry", 0, 0);
    tws_intr((void *) sc);
}
