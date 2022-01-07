
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mpt_softc {int dummy; } ;
typedef int request_t ;
typedef int MSG_DEFAULT_REPLY ;


 int TRUE ;

__attribute__((used)) static int
mpt_handshake_reply_handler(struct mpt_softc *mpt, request_t *req,
 uint32_t reply_desc, MSG_DEFAULT_REPLY *reply_frame)
{


 return (TRUE);
}
