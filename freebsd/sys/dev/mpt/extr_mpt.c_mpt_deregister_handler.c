
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t u_int ;
struct mpt_softc {int dummy; } ;
typedef int mpt_handler_type ;
struct TYPE_3__ {int reply_handler; } ;
typedef TYPE_1__ mpt_handler_t ;


 int EINVAL ;
 int ENOENT ;
 size_t MPT_CBI (int ) ;

 size_t MPT_NUM_REPLY_HANDLERS ;
 int mpt_default_reply_handler ;
 int mpt_prt (struct mpt_softc*,char*,int) ;
 int * mpt_reply_handlers ;

int
mpt_deregister_handler(struct mpt_softc *mpt, mpt_handler_type type,
         mpt_handler_t handler, uint32_t handler_id)
{

 switch (type) {
 case 128:
 {
  u_int cbi;

  cbi = MPT_CBI(handler_id);
  if (cbi >= MPT_NUM_REPLY_HANDLERS
   || mpt_reply_handlers[cbi] != handler.reply_handler)
   return (ENOENT);
  mpt_reply_handlers[cbi] = mpt_default_reply_handler;
  break;
 }
 default:
  mpt_prt(mpt, "mpt_deregister_handler unknown type %d\n", type);
  return (EINVAL);
 }
 return (0);
}
