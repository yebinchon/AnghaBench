
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int dummy; } ;
struct cam_sim {int dummy; } ;


 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int mpt_intr (struct mpt_softc*) ;

__attribute__((used)) static void
mpt_poll(struct cam_sim *sim)
{
 struct mpt_softc *mpt;

 mpt = (struct mpt_softc *)cam_sim_softc(sim);
 mpt_intr(mpt);
}
