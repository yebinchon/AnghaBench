
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct firewire_comm* fc; } ;
struct sbp_softc {TYPE_1__ fd; } ;
struct firewire_comm {int (* poll ) (struct firewire_comm*,int ,int) ;} ;
struct cam_sim {scalar_t__ softc; } ;


 int stub1 (struct firewire_comm*,int ,int) ;

__attribute__((used)) static void
sbp_poll(struct cam_sim *sim)
{
 struct sbp_softc *sbp;
 struct firewire_comm *fc;

 sbp = (struct sbp_softc *)sim->softc;
 fc = sbp->fd.fc;

 fc->poll(fc, 0, -1);

 return;
}
