
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpt_softc {int dummy; } ;
typedef int request_t ;
struct TYPE_3__ {int Event; } ;
typedef TYPE_1__ MSG_EVENT_NOTIFY_REPLY ;


 int MPT_PRT_DEBUG ;
 int mpt_lprt (struct mpt_softc*,int ,char*,int) ;

__attribute__((used)) static int
mpt_stdevent(struct mpt_softc *mpt, request_t *req, MSG_EVENT_NOTIFY_REPLY *msg)
{

 mpt_lprt(mpt, MPT_PRT_DEBUG, "mpt_stdevent: 0x%x\n", msg->Event & 0xFF);

 return (0);
}
