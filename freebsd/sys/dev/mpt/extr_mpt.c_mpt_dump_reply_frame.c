
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int dummy; } ;
typedef int MSG_DEFAULT_REPLY ;


 int mpt_print_reply (int *) ;
 int mpt_prt (struct mpt_softc*,char*) ;

void
mpt_dump_reply_frame(struct mpt_softc *mpt, MSG_DEFAULT_REPLY *reply_frame)
{

 mpt_prt(mpt, "Address Reply:\n");
 mpt_print_reply(reply_frame);
}
