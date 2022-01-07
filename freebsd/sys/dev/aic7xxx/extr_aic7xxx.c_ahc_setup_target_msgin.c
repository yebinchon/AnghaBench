
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scb {int flags; } ;
struct ahc_softc {int msg_type; scalar_t__ msgout_index; scalar_t__ msgout_len; } ;
struct ahc_devinfo {int dummy; } ;


 int MSG_TYPE_TARGET_MSGIN ;
 int SCB_AUTO_NEGOTIATE ;
 int ahc_build_transfer_msg (struct ahc_softc*,struct ahc_devinfo*) ;
 int panic (char*) ;

__attribute__((used)) static void
ahc_setup_target_msgin(struct ahc_softc *ahc, struct ahc_devinfo *devinfo,
         struct scb *scb)
{






 ahc->msgout_index = 0;
 ahc->msgout_len = 0;

 if (scb != ((void*)0) && (scb->flags & SCB_AUTO_NEGOTIATE) != 0)
  ahc_build_transfer_msg(ahc, devinfo);
 else
  panic("ahc_intr: AWAITING target message with no message");

 ahc->msgout_index = 0;
 ahc->msg_type = MSG_TYPE_TARGET_MSGIN;
}
