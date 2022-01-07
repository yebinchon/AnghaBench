
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mpt_softc {TYPE_4__* cdev; int dev; } ;
struct TYPE_5__ {int reply_handler; } ;
typedef TYPE_1__ mpt_handler_t ;
struct TYPE_6__ {struct mpt_softc* si_drv1; } ;


 int ENOMEM ;
 int GID_OPERATOR ;
 int MPT_HANDLER_REPLY ;
 int MPT_LOCK (struct mpt_softc*) ;
 int MPT_UNLOCK (struct mpt_softc*) ;
 int UID_ROOT ;
 int device_get_unit (int ) ;
 TYPE_4__* make_dev (int *,int,int ,int ,int,char*,int) ;
 int mpt_cdevsw ;
 int mpt_deregister_handler (struct mpt_softc*,int ,TYPE_1__,int ) ;
 int mpt_prt (struct mpt_softc*,char*) ;
 int mpt_register_handler (struct mpt_softc*,int ,TYPE_1__,int *) ;
 int mpt_user_reply_handler ;
 int user_handler_id ;

__attribute__((used)) static int
mpt_user_attach(struct mpt_softc *mpt)
{
 mpt_handler_t handler;
 int error, unit;

 MPT_LOCK(mpt);
 handler.reply_handler = mpt_user_reply_handler;
 error = mpt_register_handler(mpt, MPT_HANDLER_REPLY, handler,
         &user_handler_id);
 MPT_UNLOCK(mpt);
 if (error != 0) {
  mpt_prt(mpt, "Unable to register user handler!\n");
  return (error);
 }
 unit = device_get_unit(mpt->dev);
 mpt->cdev = make_dev(&mpt_cdevsw, unit, UID_ROOT, GID_OPERATOR, 0640,
     "mpt%d", unit);
 if (mpt->cdev == ((void*)0)) {
  MPT_LOCK(mpt);
  mpt_deregister_handler(mpt, MPT_HANDLER_REPLY, handler,
      user_handler_id);
  MPT_UNLOCK(mpt);
  return (ENOMEM);
 }
 mpt->cdev->si_drv1 = mpt;
 return (0);
}
