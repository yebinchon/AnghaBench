
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mpt_softc {int dummy; } ;
struct TYPE_3__ {int serno; } ;
typedef TYPE_1__ request_t ;
typedef int MSG_DEFAULT_REPLY ;


 int TRUE ;
 int mpt_dump_reply_frame (struct mpt_softc*,int *) ;
 int mpt_prt (struct mpt_softc*,char*,...) ;

__attribute__((used)) static int
mpt_default_reply_handler(struct mpt_softc *mpt, request_t *req,
 uint32_t reply_desc, MSG_DEFAULT_REPLY *reply_frame)
{

 mpt_prt(mpt,
     "Default Handler Called: req=%p:%u reply_descriptor=%x frame=%p\n",
     req, req->serno, reply_desc, reply_frame);

 if (reply_frame != ((void*)0))
  mpt_dump_reply_frame(mpt, reply_frame);

 mpt_prt(mpt, "Reply Frame Ignored\n");

 return ( TRUE);
}
