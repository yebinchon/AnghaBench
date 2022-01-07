
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpt_softc {int cdev; } ;
struct TYPE_3__ {int reply_handler; } ;
typedef TYPE_1__ mpt_handler_t ;


 int MPT_HANDLER_REPLY ;
 int MPT_LOCK (struct mpt_softc*) ;
 int MPT_UNLOCK (struct mpt_softc*) ;
 int destroy_dev (int ) ;
 int mpt_deregister_handler (struct mpt_softc*,int ,TYPE_1__,int ) ;
 int mpt_user_reply_handler ;
 int user_handler_id ;

__attribute__((used)) static void
mpt_user_detach(struct mpt_softc *mpt)
{
 mpt_handler_t handler;


 destroy_dev(mpt->cdev);

 MPT_LOCK(mpt);
 handler.reply_handler = mpt_user_reply_handler;
 mpt_deregister_handler(mpt, MPT_HANDLER_REPLY, handler,
     user_handler_id);
 MPT_UNLOCK(mpt);
}
