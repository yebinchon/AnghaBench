
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct vtscsi_softc {int vtscsi_sim; int vtscsi_path; } ;
struct TYPE_2__ {int status; int func_code; } ;
struct ccb_setasync {int event_enable; TYPE_1__ ccb_h; int callback_arg; int callback; } ;


 int AC_FOUND_DEVICE ;
 int AC_LOST_DEVICE ;
 int XPT_SASYNC_CB ;
 int vtscsi_cam_async ;
 int xpt_action (union ccb*) ;
 int xpt_setup_ccb (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
vtscsi_register_async(struct vtscsi_softc *sc)
{
 struct ccb_setasync csa;

 xpt_setup_ccb(&csa.ccb_h, sc->vtscsi_path, 5);
 csa.ccb_h.func_code = XPT_SASYNC_CB;
 csa.event_enable = AC_LOST_DEVICE | AC_FOUND_DEVICE;
 csa.callback = vtscsi_cam_async;
 csa.callback_arg = sc->vtscsi_sim;

 xpt_action((union ccb *) &csa);

 return (csa.ccb_h.status);
}
