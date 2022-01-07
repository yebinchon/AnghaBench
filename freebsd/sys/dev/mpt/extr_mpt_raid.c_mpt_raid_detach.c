
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct mpt_softc {int path; int raid_timer; } ;
struct TYPE_5__ {int func_code; } ;
struct ccb_setasync {struct mpt_softc* callback_arg; int callback; scalar_t__ event_enable; TYPE_2__ ccb_h; } ;
struct TYPE_4__ {int reply_handler; } ;
typedef TYPE_1__ mpt_handler_t ;


 int MPT_HANDLER_REPLY ;
 int MPT_LOCK (struct mpt_softc*) ;
 int MPT_UNLOCK (struct mpt_softc*) ;
 int XPT_SASYNC_CB ;
 int mpt_callout_drain (struct mpt_softc*,int *) ;
 int mpt_deregister_handler (struct mpt_softc*,int ,TYPE_1__,int ) ;
 int mpt_raid_async ;
 int mpt_raid_reply_handler ;
 int mpt_terminate_raid_thread (struct mpt_softc*) ;
 int raid_handler_id ;
 int xpt_action (union ccb*) ;
 int xpt_setup_ccb (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
mpt_raid_detach(struct mpt_softc *mpt)
{
 struct ccb_setasync csa;
 mpt_handler_t handler;

 mpt_callout_drain(mpt, &mpt->raid_timer);

 MPT_LOCK(mpt);
 mpt_terminate_raid_thread(mpt);
 handler.reply_handler = mpt_raid_reply_handler;
 mpt_deregister_handler(mpt, MPT_HANDLER_REPLY, handler,
          raid_handler_id);
 xpt_setup_ccb(&csa.ccb_h, mpt->path, 5);
 csa.ccb_h.func_code = XPT_SASYNC_CB;
 csa.event_enable = 0;
 csa.callback = mpt_raid_async;
 csa.callback_arg = mpt;
 xpt_action((union ccb *)&csa);
 MPT_UNLOCK(mpt);
}
